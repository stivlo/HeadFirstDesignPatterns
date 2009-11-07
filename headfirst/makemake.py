import os
import re
import sys
import fnmatch
from io import StringIO
from textwrap import dedent

from headfirst import HEADFIRST_BASE


def main(sysargs=sys.argv[:]):
    makefile = os.path.join(HEADFIRST_BASE, u'Makefile')
    sources = os.path.join(HEADFIRST_BASE, u'src')
    make_maker = MakeMaker(makefile, sources)
    make_maker.make_make()
    return 0


class UnicodeBufWriter(object):

    def __init__(self, outbuf=None):
        if not outbuf:
            outbuf = StringIO()
        self.buf = outbuf

    def write(self, txt, outfile=None):
        if not outfile:
            outfile = self.buf
        outfile.write(unicode(txt))

    def writeln(self, txt, outfile=None):
        self.write(txt + u'\n', outfile=outfile)


class MakeMaker(object):
    _top_make_vars = u"""\
    JAVAC = javac
    CLASSES_DIR = $(PWD)/classes
    DIST_DIR = $(PWD)/dist
    CLASSES_ARG = -d $(CLASSES_DIR)
    JAVAC_FLAGS = -Xlint:unchecked
    JAR = jar
    JAR_ARGS = cf
    HEADFIRST_JAR = headfirst.jar
    """
    _jar_task = u"""
    $(DIST_DIR)/$(HEADFIRST_JAR): $(JAVA_CLASSES)
    \t$(JAR) $(JAR_ARGS) $(HEADFIRST_JAR) -C $(CLASSES_DIR) .
    \tmv $(HEADFIRST_JAR) $(DIST_DIR)

    """
    _all_task = u"""
    all: $(DIST_DIR)/$(HEADFIRST_JAR)

    """
    _clean_tasks = u"""
    clean:
    \tfind $(CLASSES_DIR) -name \*.class -exec rm {} \;
    \tfind $(DIST_DIR) -name \*.jar -exec rm {} \;


    distclean:
    \tfind $(CLASSES_DIR) -name \*.class -exec rm {} \;

    """
    _test_task = u"""
    test: $(DIST_DIR)/$(HEADFIRST_JAR)
    \tnosetests -i ^itest ./headfirst/tests
    """
    javac_command = u'\t$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) '

    def __init__(self, outfile, basedir):
        self.outfile = open(outfile, u'wb')
        self.writer = UnicodeBufWriter(self.outfile)
        self.basedir = basedir
        self.java_project_manager = JavaProjectManager(self.basedir)

    def make_make(self):
        self.writer.writeln(dedent(self._top_make_vars))
        self._write_java_classes()
        self.writer.writeln(dedent(self._all_task))
        self.writer.writeln(dedent(self._jar_task))
        self.writer.writeln(dedent(self._clean_tasks))
        self.writer.writeln(dedent(self._test_task))
        self._tack_on_java_tasks()

    def _tack_on_java_tasks(self):
        self.writer.writeln(u'')
        self.writer.write(self.java_project_manager.get_java_tasks())
        self.writer.writeln(u'')

    def _write_java_classes(self):
        all_java_classes = self.java_project_manager.get_all_java_classes()
        self.writer.writeln(write_list_as_make_var(u'JAVA_CLASSES',
                                                   all_java_classes))


class JavaProjectManager(object):

    def __init__(self, basedir):
        self.basedir = basedir
        self.java_sources_classes_lister = \
            JavaSourcesClassesLister(self.basedir)
        self._java_classes = []
        self._tmp_java_tasks = StringIO()
        self._did_gathering = False
        self.project_dirs = set()
        self.all_source_files = set()
        self.all_class_files = set()
        self.projects = set()

    def _gather_projects_sources_and_classes(self):
        for source_file_base, source_file, class_file in \
                self.java_sources_classes_lister.get_sources_classes():
            self.project_dirs.add(source_file_base)
            self.all_source_files.add(source_file)
            self.all_class_files.add(class_file)
        self._group_into_projects()
        self._did_gathering = True

    def _group_into_projects(self):
        for project_dir in self.project_dirs:
            as_class_dir = project_dir.replace('src/', 'classes/')
            name = re.sub('[./\\\\]', '_',
                          project_dir.replace('src/headfirst', ''))
            sources = [source for source in self.all_source_files if
                       fnmatch.fnmatch(source, os.path.join(project_dir, '*'))]
            classes = [cls for cls in self.all_class_files if
                       fnmatch.fnmatch(cls, os.path.join(as_class_dir, '*'))]
            proj = JavaProject(name, project_dir, sources, classes)
            self.projects.add(proj)

    def ensure_did_gathering(self):
        if not self._did_gathering:
            self._gather_projects_sources_and_classes()

    def get_all_java_classes(self):
        self.ensure_did_gathering()
        return list(sorted(list(self.all_class_files)))

    def get_java_tasks(self):
        self.ensure_did_gathering()
        self._tmp_write_java_tasks()
        return self._tmp_java_tasks.getvalue()

    def _tmp_write_java_tasks(self):
        self._tmp_java_tasks.truncate(0)
        writer = UnicodeBufWriter(self._tmp_java_tasks)
        for proj in sorted(self.projects, key=lambda p: p.name):
            writer.write(proj.as_task())
            writer.writeln(u'')
            writer.writeln(u'')


class JavaProject(object):

    def __init__(self, name, source_dir, sources, classes):
        self.name = name
        self.source_dir = source_dir
        self.classes = classes
        self.sources = sources

    def as_task(self):
        writer = UnicodeBufWriter()
        classes_name = self.name.upper() + '_CLASSES'
        sources_name = self.name.upper() + '_SOURCES'

        write_list_as_make_var(classes_name, self.classes, writer.buf)
        writer.writeln(u'')
        write_list_as_make_var(sources_name, self.sources, writer.buf)

        writer.writeln(u'')
        writer.writeln(u'$(' + classes_name + '): $(' + sources_name + ')')
        writer.write(MakeMaker.javac_command + ' $(' + sources_name + ')')
        return writer.buf.getvalue()

    def __hash__(self):
        return hash(self.name + self.source_dir)


class JavaSourcesClassesLister(object):

    def __init__(self, basedir):
        self.basedir = basedir

    def get_sources_classes(self):
        for dirpath, dirnames, filenames in os.walk(self.basedir):
            for source_file, class_file in \
                    self._yield_source_and_class_files(dirpath, filenames):
                yield os.path.relpath(dirpath, HEADFIRST_BASE), \
                        source_file, class_file

    def _yield_source_and_class_files(self, dirpath, filenames):
        for filename in filenames:
            if fnmatch.fnmatch(filename, u'*.java'):
                fullpath = os.path.join(dirpath, filename)
                source_file = os.path.relpath(fullpath, HEADFIRST_BASE)
                yield source_file, as_class_file(source_file)


def as_class_file(source_file):
    return re.sub('^src(.+)\.java$', 'classes\\1.class', source_file)


def write_list_as_make_var(varname, list_input, buf=None):
    writer = UnicodeBufWriter(buf)
    writer.write(varname + u' = ')
    for list_item in list_input:
        writer.write(u' \\\n\t' + list_item)
    return writer.buf.getvalue()


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python

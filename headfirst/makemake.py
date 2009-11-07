import os
import sys
import fnmatch
from io import StringIO

from headfirst import HEADFIRST_BASE


def main(sysargs=sys.argv[:]):
    makefile = os.path.join(HEADFIRST_BASE, u'Makefile')
    sources = os.path.join(HEADFIRST_BASE, u'src')
    make_maker = MakeMaker(makefile, sources)
    make_maker.make_make()
    return 0


class MakeMaker(object):

    def __init__(self, outfile, basedir):
        self.outfile = open(outfile, u'wb')
        self.basedir = basedir
        self.java_source_list_maker = JavaSourceClassMaker(self.basedir)
        self._java_classes = []
        self._tmp_java_tasks = StringIO()

    def make_make(self):
        self._write_java_vars()
        self._tmp_write_java_tasks()
        self._write_java_classes()
        self._write_all_task()
        self._tack_on_java_tasks()

    def _write_java_vars(self):
        self._writeln(u'JAVAC = javac')
        self._writeln(u'CLASSES_ARG = -d $(PWD)/classes')
        self._writeln(u'JAVAC_FLAGS = -Xlint:unchecked')

    def _tmp_write_java_tasks(self):
        for source_file, class_file in \
                self.java_source_list_maker.get_sources_classes():
            self._writeln(class_file + ': ' + source_file,
                          outfile=self._tmp_java_tasks)
            self._writeln(u'\t$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) ' +
                          source_file, outfile=self._tmp_java_tasks)
            self._writeln(u'', outfile=self._tmp_java_tasks)
            self._java_classes.append(class_file)

    def _tack_on_java_tasks(self):
        self._writeln(u'')
        self._write(self._tmp_java_tasks.getvalue())
        self._writeln(u'')

    def _write_java_classes(self):
        self._write(u'JAVA_CLASSES = ')
        for class_file in self._java_classes:
            self._write(u' \\\n\t' + class_file)
        self._writeln(u'')

    def _write_all_task(self):
        self._writeln(u'\n\nall: $(JAVA_CLASSES)')
        self._writeln(u'')

    def _write(self, txt, outfile=None):
        if not outfile:
            outfile = self.outfile
        outfile.write(unicode(txt))

    def _writeln(self, txt, outfile=None):
        self._write(unicode(txt) + u'\n', outfile=outfile)


class JavaSourceClassMaker(object):

    def __init__(self, basedir):
        self.basedir = basedir

    def get_sources_classes(self):
        for dirpath, dirnames, filenames in os.walk(self.basedir):
            for source_file, class_file in \
                    self._yield_source_and_class_files(dirpath, filenames):
                yield source_file, class_file

    def _yield_source_and_class_files(self, dirpath, filenames):
        for filename in filenames:
            if fnmatch.fnmatch(filename, u'*.java'):
                fullpath = os.path.join(dirpath, filename)
                source_file = os.path.relpath(fullpath, HEADFIRST_BASE)
                yield unicode(source_file), \
                    unicode(self._as_class_file(source_file))

    @staticmethod
    def _as_class_file(source_file):
        class_file = source_file.replace(u'src', u'classes')
        class_file = source_file.replace(u'.java', u'.class')
        return class_file


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python

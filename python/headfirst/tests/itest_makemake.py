import headfirst.makemake as HM
from headfirst import HEADFIRST_BASE
from headfirst.tests._support import assert_exists


def test_java_sources_classes_lister():
    lister = HM.JavaSourcesClassesLister(HEADFIRST_BASE)
    dirpaths = []
    for dirpath, source_file, class_file in lister.get_sources_classes():
        yield assert_exists, lister.basedir, source_file
        dirpaths.append(dirpath)

    for dirpath in list(set(dirpaths)):
        yield assert_exists, dirpath

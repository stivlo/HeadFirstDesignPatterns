import os

import headfirst.makemake as HM
from headfirst import HEADFIRST_BASE


def assert_exists(*parts):
    fullpath = os.path.join(*parts)
    assert os.path.exists(fullpath)


def test_java_sources_classes_lister():
    lister = HM.JavaSourcesClassesLister(HEADFIRST_BASE)
    for dirpath, source_file, class_file in lister.get_sources_classes():
        yield assert_exists, lister.basedir, source_file
        yield assert_exists, dirpath

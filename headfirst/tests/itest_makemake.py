import os

import headfirst.makemake as HM
from headfirst import HEADFIRST_BASE


def assert_exists(*parts):
    fullpath = os.path.join(*parts)
    assert os.path.exists(fullpath)


def test_java_source_list_maker():
    list_maker = HM.JavaSourceListMaker(HEADFIRST_BASE)
    for source in list_maker.get_source_list():
        yield assert_exists, list_maker.basedir, source

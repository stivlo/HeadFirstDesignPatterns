import os


def assert_exists(*parts):
    fullpath = os.path.join(*parts)
    assert os.path.exists(fullpath)


def assert_equal(this, other, msg=''):
    assert this == other, msg


def assert_not_equal(this, other, msg=''):
    assert this != other, msg


def assert_true(assertion, msg=''):
    assert assertion, msg


def assert_false(assertion, msg=''):
    assert not assertion, msg

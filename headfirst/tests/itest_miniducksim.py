import os
import sys
import subprocess

import headfirst.strategy.miniducksim as HSM
from headfirst import HEADFIRST_BASE
from headfirst.tests._support import assert_equal

MINIDUCKSIM_JAVA = os.path.join(HEADFIRST_BASE, 'bin', 'miniducksim')
MINIDUCKSIM_PY = os.path.join(HEADFIRST_BASE, 'bin', 'miniducksim-py')


def test_miniducksim_java():
    for assertion in _assert_expected_output(MINIDUCKSIM_JAVA):
        yield assertion


def test_miniducksim_py():
    for assertion in _assert_expected_output(MINIDUCKSIM_PY):
        yield assertion


def _assert_expected_output(exe):
    job = subprocess.Popen([exe],
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)
    out, err = job.communicate()
    for i, line in enumerate(out.splitlines()):
        yield assert_equal, EXPECTED_LINES[i], line


EXPECTED_LINES = (
    'Quack',
    'I\'m flying!!',
    'I can\'t fly',
    'I\'m flying with a rocket!',
)

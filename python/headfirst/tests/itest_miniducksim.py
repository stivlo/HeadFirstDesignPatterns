import os
import sys
from io import BytesIO
from unittest import TestCase

from headfirst.strategy.miniducksim import main as miniducksim


class TestMiniDuckSim(TestCase):

    def test_miniducksim(self):
        stdout = BytesIO()
        sys.stdout = stdout
        miniducksim()
        sys.stdout = sys.__stdout__
        for i, line in enumerate(stdout.getvalue().splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
    'Quack',
    'I\'m flying!!',
    'I can\'t fly',
    'I\'m flying with a rocket!',
)

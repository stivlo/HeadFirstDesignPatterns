from unittest import TestCase

from ..strategy.miniducksim import main as miniducksim
from ._support import call_and_capture_output


class TestMiniDuckSim(TestCase):

    def test_miniducksim(self):
        out = call_and_capture_output(miniducksim)
        for i, line in enumerate(out.splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
    'Quack',
    'I\'m flying!!',
    'I can\'t fly',
    'I\'m flying with a rocket!',
)

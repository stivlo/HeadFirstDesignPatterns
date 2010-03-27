from unittest import TestCase

from headfirst.decorator import starbuzzcoffee as SBC
from headfirst.tests._support import call_and_capture_output


class TestStarbuzzCoffee(TestCase):

    def test_starbuzz_coffee(self):
        out = call_and_capture_output(SBC.main)
        self.assertTrue(bool(len(out)))

        for i, line in enumerate(out.splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
    'Espresso $1.99',
    'Dark Roast Coffee, Mocha, Mocha, Whip $1.49',
    'House Blend Coffee, Soy, Mocha, Whip $1.34',
)

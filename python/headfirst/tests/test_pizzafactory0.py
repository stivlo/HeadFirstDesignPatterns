from unittest import TestCase

from headfirst.factory import pizza0 as P0
from headfirst.tests._support import call_and_capture_output


class TestPizzaFactory0(TestCase):

    def test_pizza_factory0(self):
        out = call_and_capture_output(P0.main)
        self.assertTrue(bool(len(out)))

        for i, line in enumerate(out.splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
    'Preparing Cheese Pizza',
    'Baking Cheese Pizza',
    'Cutting Cheese Pizza',
    'Boxing Cheese Pizza',
    'We ordered a Cheese Pizza',
    '',
    'Preparing Veggie Pizza',
    'Baking Veggie Pizza',
    'Cutting Veggie Pizza',
    'Boxing Veggie Pizza',
    'We ordered a Veggie Pizza',
    '',
)

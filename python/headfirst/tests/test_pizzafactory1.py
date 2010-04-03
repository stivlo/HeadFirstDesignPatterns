from unittest import TestCase

from headfirst.factory import pizza1 as P1
from headfirst.tests._support import call_and_capture_output


class TestPizzaFactory1(TestCase):

    def test_pizza_factory1(self):
        out = call_and_capture_output(P1.main)
        self.assertTrue(bool(len(out)))

        for i, line in enumerate(out.splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
    'Preparing NY Style Sauce and Cheese Pizza',
    'Tossing dough...',
    'Adding sauce...',
    'Adding toppings: ',
    '    Grated Reggiano Cheese',
    'Bake for 25 minutes at 350',
    'Cutting the pizza into diagonal slices',
    'Place pizza in official PizzaStore box',
    'Ethan ordered a NY Style Sauce and Cheese Pizza',
    '',
    'Preparing Chicago Style Deep Dish Cheese Pizza',
    'Tossing dough...',
    'Adding sauce...',
    'Adding toppings: ',
    '    Shredded Mozzarella Cheese',
    'Bake for 25 minutes at 350',
    'Cutting the pizza into square slices',
    'Place pizza in official PizzaStore box',
    'Joel ordered a Chicago Style Deep Dish Cheese Pizza',
    '',
)

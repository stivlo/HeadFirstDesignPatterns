from __future__ import print_function

import sys


def main(sysargs=sys.argv[:]):
    factory = SimplePizzaFactory()
    store = PizzaStore(factory)

    for pizza_type in ('cheese', 'veggie'):
        pizza = store.order_pizza(pizza_type)
        print('We ordered a ' + pizza.name + '\n')

    return 0


class PizzaStore(object):

    def __init__(self, factory):
        self.factory = factory

    def order_pizza(self, pizza_type):
        pizza = self.factory.create_pizza(pizza_type)

        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()

        return pizza


class Pizza(object):
    name = ''
    dough = ''
    sauce = ''
    toppings = ()

    def prepare(self):
        print("Preparing " + self.name)

    def bake(self):
        print("Baking " + self.name)

    def cut(self):
        print("Cutting " + self.name)

    def box(self):
        print("Boxing " + self.name)

    def __str__(self):
        display = []
        display.append('---- ' + self.name + ' ----')
        display.append(dough)
        display.append(sauce)

        for topping in self.toppings:
            display.append(topping)

        return '\n'.join(display)


class CheesePizza(Pizza):
    name = 'Cheese Pizza'
    dough = 'Regular Crust'
    sauce = 'Marinara Pizza Sauce'
    toppings = (
        'Fresh Mozzarella',
        'Parmesan',
    )


class PepperoniPizza(Pizza):
    name = "Pepperoni Pizza"
    dough = "Regular Crust"
    sauce = "Marinara Pizza Sauce"
    toppings = (
        "Fresh Mozzarella",
        "Parmesan",
        "Pepperoni",
    )


class GreekPizza(Pizza):
    name = "Greek Pizza"
    dough = "Thin Crust"
    sauce = "Olive Oil"
    toppings = (
        "Fresh Mozzarella",
        "Feta Cheese",
        "Olives",
        "Spinach",
    )


class VeggiePizza(Pizza):
    name = "Veggie Pizza"
    dough = "Regular Crust"
    sauce = "Marinara Sauce"
    toppings = (
        "Fresh Mozzarella",
        "Tomatoes",
        "Peppers",
        "Onions",
    )


class SimplePizzaFactory(object):
    _pizza_types = {
        'cheese': CheesePizza,
        'pepperoni': PepperoniPizza,
        'greek': GreekPizza,
        'veggie': VeggiePizza,
    }

    def create_pizza(self, pizza_type):
        return self._pizza_types.get(pizza_type)()


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python

from __future__ import print_function

import sys


def main(sysargs=sys.argv[:]):
    ny_store = NYPizzaStore()
    chicago_store = ChicagoPizzaStore()

    ny_pizza = ny_store.order_pizza('cheese')
    print('Ethan ordered a {0}\n'.format(ny_pizza.name))

    chicago_pizza = chicago_store.order_pizza('cheese')
    print('Joel ordered a {0}\n'.format(chicago_pizza.name))

    return 0


class PizzaStore(object):

    def create_pizza(self, pizza_type):
        raise NotImplementedError

    def order_pizza(self, pizza_type):
        pizza = self.create_pizza(pizza_type)

        pizza.prepare()
        pizza.bake()
        pizza.cut()
        pizza.box()

        return pizza


class Pizza(object):
    name = 'nondescript Pizza'
    dough = ''
    sauce = ''
    toppings = ()

    def prepare(self):
        self.info('Preparing ' + self.name)
        self.info('Tossing dough...')
        self.info('Adding sauce...')
        self.info('Adding toppings: ')

        for topping in self.toppings:
            self.info('    ' + topping)

    def info(self, msg):
        print(msg)

    def bake(self):
        self.info('Bake for 25 minutes at 350')

    def cut(self):
        self.info('Cutting the pizza into diagonal slices')

    def box(self):
        self.info('Place pizza in official PizzaStore box')


class NYStyleCheesePizza(Pizza):
    name = 'NY Style Sauce and Cheese Pizza'
    dough = 'Thin Crust Dough'
    sauce = 'Marinara Sauce'
    toppings = (
        'Grated Reggiano Cheese',
    )


class NYStylePepperoniPizza(Pizza):
    name = 'NY Style Pepperoni Pizza'
    dough = 'Thin Crust Dough'
    sauce = 'Marinara Sauce'
    toppings = (
        'Grated Reggiano Cheese',
        'Pepperoni',
    )


class NYStyleClamPizza(Pizza):
    name = 'NY Style Clam Pizza'
    dough = 'Thin Crust Dough'
    sauce = 'Marinara Sauce'
    toppings = (
        'Grated Reggiano Cheese',
        'Clams',
    )


class NYStyleVeggiePizza(Pizza):
    name = 'NY Style Veggie Pizza'
    dough = 'Thin Crust Dough'
    sauce = 'Marinara Sauce'
    toppings = (
        'Grated Reggiano Cheese',
        'Peppers',
        'Onions',
        'Spinach',
    )


class NYPizzaStore(PizzaStore):
    _pizza_types = {
        'cheese': NYStyleCheesePizza,
        'pepperoni': NYStylePepperoniPizza,
        'clam': NYStyleClamPizza,
        'veggie': NYStyleVeggiePizza,
    }

    def create_pizza(self, pizza_type):
        return self._pizza_types[pizza_type]()


class ChicagoStyleCheesePizza(Pizza):
    name = 'Chicago Style Deep Dish Cheese Pizza'
    dough = 'Extra Thick Crust Dough'
    sauce = 'Plum Tomato Sauce'
    toppings = (
        'Shredded Mozzarella Cheese',
    )

    def cut(self):
        self.info('Cutting the pizza into square slices')


class ChicagoStylePepperoniPizza(Pizza):
    name = 'Chicago Style Deep Dish Pepperoni Pizza'
    dough = 'Extra Thick Crust Dough'
    sauce = 'Plum Tomato Sauce'
    toppings = (
        'Shredded Mozzarella Cheese',
        'Pepperoni',
    )

    def cut(self):
        self.info('Cutting the pizza into square slices')


class ChicagoStyleClamPizza(Pizza):
    name = 'Chicago Style Deep Dish Clam Pizza'
    dough = 'Extra Thick Crust Dough'
    sauce = 'Plum Tomato Sauce'
    toppings = (
        'Shredded Mozzarella Cheese',
        'Clams',
    )

    def cut(self):
        self.info('Cutting the pizza into square slices')


class ChicagoStyleVeggiePizza(Pizza):
    name = 'Chicago Style Deep Dish Veggie Pizza'
    dough = 'Extra Thick Crust Dough'
    sauce = 'Plum Tomato Sauce'
    toppings = (
        'Shredded Mozzarella Cheese',
        'Peppers',
        'Onions',
        'Spinach',
    )

    def cut(self):
        self.info('Cutting the pizza into square slices')


class ChicagoPizzaStore(PizzaStore):
    _pizza_types = {
        'cheese': ChicagoStyleCheesePizza,
        'pepperoni': ChicagoStylePepperoniPizza,
        'clam': ChicagoStyleClamPizza,
        'veggie': ChicagoStyleVeggiePizza,
    }

    def create_pizza(self, pizza_type):
        return self._pizza_types[pizza_type]()


class Pizza(object):
    name = ''


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python

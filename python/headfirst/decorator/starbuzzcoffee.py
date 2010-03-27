from __future__ import print_function

import sys


def main(sysargs=sys.argv[:]):
    StarbuzzCoffee().main(sysargs)
    return 0


class StarbuzzCoffee(object):

    def main(self, sysargs):
        self.show_espresso()
        self.show_dark_roast()
        self.show_house_blend()

    def show(self, beverage):
        print('{0} ${1}'.format(beverage.description, beverage.cost()))

    def show_espresso(self):
        beverage = Espresso()
        self.show(beverage)

    def show_dark_roast(self):
        beverage = DarkRoast()
        beverage = Whip(Mocha(Mocha(beverage)))
        self.show(beverage)

    def show_house_blend(self):
        beverage = HouseBlend()
        beverage = Whip(Mocha(Soy(beverage)))
        self.show(beverage)


class Beverage(object):
    description = 'Unknown Beverage'

    def cost(self):
        raise NotImplementedError


class CondimentDecorator(object):

    def __init__(self, beverage):
        self.beverage = beverage

    @property
    def description(self):
        raise NotImplementedError


class Espresso(Beverage):
    description = 'Espresso'

    def cost(self):
        return 1.99


class HouseBlend(Beverage):
    description = 'House Blend Coffee'

    def cost(self):
        return 0.89


class DarkRoast(Beverage):
    description = 'Dark Roast Coffee'

    def cost(self):
        return 0.99


class Decaf(Beverage):
    description = 'Decaf Coffee'

    def cost(self):
        return 1.05


class Mocha(CondimentDecorator):

    @property
    def description(self):
        return self.beverage.description + ', Mocha'

    def cost(self):
        return 0.20 + self.beverage.cost()


class SteamedMilk(CondimentDecorator):

    @property
    def description(self):
        return self.beverage.description + ', Steamed Milk'

    def cost(self):
        return 0.10 + self.beverage.cost()


class Soy(CondimentDecorator):

    @property
    def description(self):
        return self.beverage.description + ', Soy'

    def cost(self):
        return 0.15 + self.beverage.cost()


class Whip(CondimentDecorator):

    @property
    def description(self):
        return self.beverage.description + ', Whip'

    def cost(self):
        return 0.10 + self.beverage.cost()


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python

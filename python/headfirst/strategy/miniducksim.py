import sys


def main(sysargs=sys.argv[:]):
    mallard = MallardDuck()
    mallard.perform_quack()
    mallard.perform_fly()

    model = ModelDuck()
    model.perform_fly()
    model.fly_behavior = FlyRocketPowered()
    model.perform_fly()

    return 0


class Duck(object):
    quack_behavior = None
    fly_behavior = None

    def perform_fly(self):
        self.fly_behavior.fly()

    def perform_quack(self):
        self.quack_behavior.quack()

    def swim(self):
        print "All ducks float, even decoys!"


class ModelDuck(Duck):

    def __init__(self):
        self.fly_behavior = FlyNoWay()
        self.quack_behavior = Quack()

    def display(self):
        print "I'm a model duck"


class MallardDuck(Duck):

    def __init__(self):
        self.quack_behavior = Quack()
        self.fly_behavior = FlyWithWings()

    def display(self):
        print "I'm a real Mallard duck"


class FlyBehavior(object):

    def fly(self):
        raise NotImplementedError


class FlyWithWings(FlyBehavior):

    def fly(self):
        print "I'm flying!!"


class FlyRocketPowered(FlyBehavior):

    def fly(self):
        print "I'm flying with a rocket!"


class FlyNoWay(FlyBehavior):

    def fly(self):
        print "I can't fly"


class QuackBehavior(object):

    def quack(self):
        raise NotImplementedError


class Quack(QuackBehavior):

    def quack(self):
        print "Quack"


class MuteQuack(QuackBehavior):

    def quack(self):
        print "<< Silence >>"


class Squeak(QuackBehavior):

    def quack(self):
        print "Squeak"


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python

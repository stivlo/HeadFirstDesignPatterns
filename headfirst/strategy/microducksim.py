import sys


def main(sysargs=sys.argv[:]):
    mallard = MallardDuck()
    mallard.quack()
    mallard.fly()

    model = ModelDuck()
    model.fly()
    model.fly = fly_rocket_powered
    model.fly()

    return 0


class ModelDuck(object):

    def __init__(self):
        self.quack = quack
        self.fly = fly_with_wings

    def __str__(self):
        return "I'm a model duck"


class MallardDuck(object):

    def __init__(self):
        self.quack = quack
        self.fly = fly_no_way

    def __str__(self):
        return "I'm a real Mallard duck"


def quack():
    print "Quack"


def fly_with_wings():
    print "I'm flying!!"


def fly_no_way():
    print "I can't fly"


def fly_rocket_powered():
    print "I'm flying with a rocket!"

from unittest import TestCase

from ..strategy import miniducksim as MDS
from ._support import call_and_capture_output



class TestDuck(TestCase):

    def setUp(self):
        self.duck = MDS.Duck()

    def test_cannot_fly(self):
        self.assertRaises(AttributeError, self.duck.perform_fly)

    def test_cannot_quack(self):
        self.assertRaises(AttributeError, self.duck.perform_quack)

    def test_can_swim(self):
        out = call_and_capture_output(self.duck.swim)
        self.assertEqual("All ducks float, even decoys!\n", out)


class TestModelDuck(TestCase):

    def setUp(self):
        self.model = MDS.ModelDuck()

    def test_can_fly_but_not_really(self):
        out = call_and_capture_output(self.model.perform_fly)
        self.assertEqual("I can't fly\n", out)

    def test_can_quack(self):
        out = call_and_capture_output(self.model.perform_quack)
        self.assertEqual("Quack\n", out)

    def test_can_display(self):
        out = call_and_capture_output(self.model.display)
        self.assertEqual("I'm a model duck\n", out)


class TestMallardDuck(TestCase):

    def setUp(self):
        self.mallard = MDS.MallardDuck()

    def test_can_fly(self):
        out = call_and_capture_output(self.mallard.perform_fly)
        self.assertEqual("I'm flying!!\n", out)

    def test_can_quack(self):
        out = call_and_capture_output(self.mallard.perform_quack)
        self.assertEqual("Quack\n", out)

    def test_can_display(self):
        out = call_and_capture_output(self.mallard.display)
        self.assertEqual("I'm a real Mallard duck\n", out)


class TestFlyBehavior(TestCase):

    def test_is_unimplemented(self):
        fb = MDS.FlyBehavior()
        self.assertRaises(NotImplementedError, fb.fly)


class TestFlyWithWings(TestCase):

    def test_flies(self):
        fb = MDS.FlyWithWings()
        out = call_and_capture_output(fb.fly)
        self.assertEqual("I'm flying!!\n", out)


class TestFlyRocketPowered(TestCase):

    def test_flies_with_a_rocket(self):
        fb = MDS.FlyRocketPowered()
        out = call_and_capture_output(fb.fly)
        self.assertEqual("I'm flying with a rocket!\n", out)


class TestQuackBehavior(TestCase):

    def test_is_unimplemented(self):
        qb = MDS.QuackBehavior()
        self.assertRaises(NotImplementedError, qb.quack)


class TestQuack(TestCase):

    def test_quacks(self):
        qb = MDS.Quack()
        out = call_and_capture_output(qb.quack)
        self.assertEqual("Quack\n", out)


class TestMuteQuack(TestCase):

    def test_is_silent(self):
        qb = MDS.MuteQuack()
        out = call_and_capture_output(qb.quack)
        self.assertEqual("<< Silence >>\n", out)


class TestSqueak(TestCase):

    def test_squeaks(self):
        qb = MDS.Squeak()
        out = call_and_capture_output(qb.quack)
        self.assertEqual("Squeak\n", out)

from unittest import TestLoader, TextTestRunner, TestSuite


def run_suite(verbose=False):
    loader = TestLoader()
    runner = TextTestRunner(verbosity=2 if verbose else 1)
    suite = TestSuite()
    for mod in get_modules():
        suite.addTest(loader.loadTestsFromModule(mod))
    runner.run(suite)
    return 0


def get_modules():
    for mod in TEST_MODULES:
        yield __import__('headfirst.tests.{0}'.format(mod),
                         fromlist=[mod])


TEST_MODULES = (
    'test_miniducksim',
    'test_weatherstation',
    'test_lifechangingapp',
    'test_starbuzzcoffee',
    'test_iodecorator',
)

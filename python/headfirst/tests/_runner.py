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
    from . import test_miniducksim
    yield test_miniducksim

    from . import test_weatherstation
    yield test_weatherstation

    from . import test_lifechangingapp
    yield test_lifechangingapp

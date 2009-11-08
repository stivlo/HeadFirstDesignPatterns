from unittest import TestLoader, TextTestRunner, TestSuite


def run_suite(verbose=False):
    verbosity = 2 if verbose else 0
    loader = TestLoader()
    runner = TextTestRunner(verbosity=verbosity)
    suite = TestSuite()
    for mod in get_modules():
        suite.addTest(loader.loadTestsFromModule(mod))
    runner.run(suite)
    return 0


def get_modules():
    from . import itest_miniducksim
    yield itest_miniducksim

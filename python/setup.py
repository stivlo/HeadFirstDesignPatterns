import sys
import glob

from distutils.core import setup


SETUP_ARGS = dict(
    name='HeadFirstDesignPatterns',
    version='0.1.0',
    author='Dan Buch',
    author_email='daniel.buch@gmail.com',
    url='http://github.com/meatballhat/HeadFirstDesignPatterns/downloads',
    description='python versions of Java examples '
                'from the Head First Design Patterns book',
    long_description='',
    packages=[
        'headfirst',
        'headfirst.strategy',
        'headfirst.observer',
        'headfirst.tests',
    ],
    scripts=[],
)


def main():
    if sys.argv[1:] and sys.argv[1] == 'test':
        return run_tests()
        
    SETUP_ARGS.update(dict(
        long_description=open('README.txt').read(),
        scripts=glob.glob('scripts/*'),
    ))
    setup(**SETUP_ARGS)
    return 0


def run_tests():
    from headfirst.tests._runner import run_suite 
    verbose = '--verbose' in sys.argv or '-v' in sys.argv
    return run_suite(verbose=verbose)


if __name__ == '__main__':
    sys.exit(main())

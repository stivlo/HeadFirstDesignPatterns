from __future__ import print_function

import os
import sys


def main(sysargs=sys.argv[:]):
    instream = LowerCaseInputStream(
        open(os.path.join(os.path.dirname(__file__), 'test.txt')))

    char = instream.read(1)

    while char:
        print(char, end='')
        char = instream.read(1)

    return 0


class LowerCaseInputStream(object):

    def __init__(self, stream):
        self._stream = stream

    def read(self, num=1):
        char = self._stream.read(num)

        if char:
            return bytes(char).lower()
        return ''

    def close(self):
        self._stream.close()


if __name__ == '__main__':
    sys.exit(main())

# vim:filetype=python

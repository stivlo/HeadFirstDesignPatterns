from unittest import TestCase

from headfirst.decorator import iodecorator as IOD
from headfirst.tests._support import call_and_capture_output


class TestIODecorator(TestCase):

    def test_io_decorator(self):
        out = call_and_capture_output(IOD.main)
        self.assertTrue(bool(len(out)))

        for i, line in enumerate(out.splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
    'i know the decorator pattern therefore i rule!',
)

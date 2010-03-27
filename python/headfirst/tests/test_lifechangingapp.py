from unittest import TestCase

from ..observer import lifechangingapp as LCA
from ._support import call_and_capture_output


class TestLifeChangingApp(TestCase):

    def test_lifechangingapp(self):
        out = call_and_capture_output(LCA.main)
        for i, line in enumerate(out.splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
)

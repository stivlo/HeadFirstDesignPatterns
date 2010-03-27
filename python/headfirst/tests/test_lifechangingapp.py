from unittest import TestCase

from ..observer import lifechangingapp as LCA
from ._support import call_and_capture_output


class TestLifeChangingApp(TestCase):

    def test_lifechangingapp(self):
        out = call_and_capture_output(LCA.main)
        lines = out.splitlines()
        self.assertTrue('Come on, do it!' in lines)
        self.assertTrue("Don't do it, you might regret it!" in lines)

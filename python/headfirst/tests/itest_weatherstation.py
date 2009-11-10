from unittest import TestCase

from ..observer.weatherstation import main as weatherstation
from ._support import call_and_capture_output


class TestWeatherStation(TestCase):

    def test_weatherstation(self):
        return

        out = call_and_capture_output(weatherstation)
        self.assertNotEqual('', out)
        for i, line in enumerate(out.splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
    'Current conditions: 80.0F degrees and 65.0% humidity',
    'Avg/Max/Min temperature = 80.0/80.0/80.0',
    'Forecast: Improving weather on the way!',
    'Heat index is 82.95535',
    'Current conditions: 82.0F degrees and 70.0% humidity',
    'Avg/Max/Min temperature = 81.0/82.0/80.0',
    'Forecast: Watch out for cooler, rainy weather',
    'Heat index is 86.90124',
    'Current conditions: 78.0F degrees and 90.0% humidity',
    'Avg/Max/Min temperature = 80.0/82.0/78.0',
    'Forecast: More of the same',
    'Heat index is 83.64967',
)

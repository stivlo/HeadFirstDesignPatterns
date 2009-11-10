from unittest import TestCase

from ..observer.weatherstation import WeatherData, CurrentConditionsDisplay, \
                                      main as weatherstation
from ._support import call_and_capture_output


class TestWeatherData(TestCase):

    def setUp(self):
        self.weather_data = WeatherData()

    def test_register_observer_adds_observer_to_self_observers(self):
        fake_observer = FakeObserver()
        self.weather_data.register_observer(fake_observer)
        self.assertTrue(fake_observer in self.weather_data._observers)

    def test_remove_observer_removes_observer_from_self_observers(self):
        fake_observer = FakeObserver()
        self.weather_data.register_observer(fake_observer)
        self.weather_data.remove_observer(fake_observer)
        self.assertTrue(fake_observer not in self.weather_data._observers)

    def test_notify_observers_calls_update_of_each_observer(self):
        fake_observers = [FakeObserver() for i in range(0, 3)]
        for observer in fake_observers:
            self.weather_data.register_observer(observer)

        self.weather_data.temperature = 100.0
        self.weather_data.humidity = 71.9
        self.weather_data.pressure = 44.7
        self.weather_data.notify_observers()

        for observer in self.weather_data._observers:
            self.assertEqual(100.0, observer.temperature)
            self.assertEqual(71.9, observer.humidity)
            self.assertEqual(44.7, observer.pressure)

    def test_measurements_changed_invokes_call_to_notify_observers(self):
        was_called = [False]
        def fake_notify():
            was_called[0] = True

        self.weather_data.notify_observers = fake_notify
        self.weather_data.measurements_changed()
        self.assertTrue(was_called[0])

    def test_set_measurements_assigns_to_self(self):
        self.weather_data.set_measurements(48.9, 74.3, 38.8)
        self.assertEqual(48.9, self.weather_data.temperature)
        self.assertEqual(74.3, self.weather_data.humidity)
        self.assertEqual(38.8, self.weather_data.pressure)


class TestCurrentConditionsDisplay(TestCase):

    def setUp(self):
        self.weather_data = WeatherData()
        self.display = CurrentConditionsDisplay(self.weather_data)

    def test_initializes_with_weather_data_instance_and_registers(self):
        self.assertEqual(self.weather_data, self.display.weather_data)
        self.assertTrue(self.display in self.weather_data._observers)

    def test_update_assigns_temp_and_humidity_and_calls_display(self):
        was_called = [False]
        def fake_display():
            was_called[0] = True

        self.display.display = fake_display
        self.display.update(89.2, 44.5, 82.4)
        self.assertEqual(89.2, self.display.temperature)
        self.assertEqual(44.5, self.display.humidity)
        self.assertTrue(was_called[0])


class TestWeatherStation(TestCase):

    def test_weatherstation(self):
        out = call_and_capture_output(weatherstation)
        self.assertNotEqual('', out)
        for i, line in enumerate(out.splitlines()):
            self.assertEqual(EXPECTED_LINES[i], line)


EXPECTED_LINES = (
    'Current conditions: 80.0F degrees and 65.0% humidity',
    'Avg/Max/Min temperature = 80.0/80.0/80.0',
    'Forecast: Improving weather on the way!',
    'Heat index is 82.9554',
    'Current conditions: 82.0F degrees and 70.0% humidity',
    'Avg/Max/Min temperature = 81.0/82.0/80.0',
    'Forecast: Watch out for cooler, rainy weather',
    'Heat index is 86.9012',
    'Current conditions: 78.0F degrees and 90.0% humidity',
    'Avg/Max/Min temperature = 80.0/82.0/78.0',
    'Forecast: More of the same',
    'Heat index is 83.6497',
)


class FakeObserver(object):
    temperature = None
    humidity = None
    pressure = None

    def update(self, temperature, humidity, pressure):
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure

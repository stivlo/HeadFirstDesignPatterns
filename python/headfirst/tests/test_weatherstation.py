from unittest import TestCase

from ..observer.weatherstation import Subject, Observer, DisplayElement, \
                                      WeatherData
from ._support import call_and_capture_output


class TestSubject(TestCase):

    def setUp(self):
        self.subject = Subject()

    def test_register_observer_is_unimplemented(self):
        self.assertRaises(NotImplementedError,
                          self.subject.register_observer, None)

    def test_remove_observer_is_unimplemented(self):
        self.assertRaises(NotImplementedError,
                          self.subject.remove_observer, None)

    def test_notify_observers_is_unimplemented(self):
        self.assertRaises(NotImplementedError, self.subject.notify_observers)


class TestObserver(TestCase):

    def setUp(self):
        self.observer = Observer()

    def test_update_is_unimplemented(self):
        self.assertRaises(NotImplementedError, self.observer.update,
                          None, None, None)


class TestDisplayElement(TestCase):

    def setUp(self):
        self.display_element = DisplayElement()

    def test_display_is_unimplemented(self):
        self.assertRaises(NotImplementedError, self.display_element.display)


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


class FakeObserver(object):
    temperature = None
    humidity = None
    pressure = None

    def update(self, temperature, humidity, pressure):
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure

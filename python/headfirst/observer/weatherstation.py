

def main():
    print 'fail'


class Subject(object):

    def register_observer(self, observer):
        raise NotImplementedError

    def remove_observer(self, observer):
        raise NotImplementedError

    def notify_observers(self):
        raise NotImplementedError


class Observer(object):

    def update(self, temp, humidity, pressure):
        raise NotImplementedError


class DisplayElement(object):

    def display(self):
        raise NotImplementedError


class WeatherData(object):
    temperature = 0.0
    humidity = 0.0
    pressure = 0.0

    def __init__(self):
        self._observers = set()

    def register_observer(self, observer):
        self._observers.add(observer)

    def remove_observer(self, observer):
        self._observers.remove(observer)

    def notify_observers(self):
        for observer in self._observers:
            observer.update(self.temperature, self.humidity, self.pressure)

    def measurements_changed(self):
        self.notify_observers()

    def set_measurements(self, temperature, humidity, pressure):
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure

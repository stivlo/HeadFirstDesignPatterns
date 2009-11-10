from __future__ import print_function


def main():
    weather_data = WeatherData()
    current_display = CurrentConditionsDisplay(weather_data)
    statistics_display = StatisticsDisplay(weather_data)
    forecast_display = ForecastDisplay(weather_data)
    heat_index_display = HeatIndexDisplay(weather_data)

    weather_data.set_measurements(80, 65, 30.4)
    weather_data.set_measurements(82, 70, 29.2)
    weather_data.set_measurements(78, 90, 29.2)
    return 0


class WeatherData(object):
    temperature = 0.0
    humidity = 0.0
    pressure = 0.0

    def __init__(self):
        self._observers = []

    def register_observer(self, observer):
        self._observers.append(observer)

    def remove_observer(self, observer):
        self._observers.pop(self._observers.index(observer))

    def notify_observers(self):
        for observer in self._observers:
            observer.update(self.temperature, self.humidity, self.pressure)

    def measurements_changed(self):
        self.notify_observers()

    def set_measurements(self, temperature, humidity, pressure):
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        self.measurements_changed()


class CurrentConditionsDisplay(object):
    temperature = 0.0
    humidity = 0.0

    def __init__(self, weather_data):
        self.weather_data = weather_data
        self.weather_data.register_observer(self)

    def update(self, temperature, humidity, pressure):
        self.temperature = temperature
        self.humidity = humidity
        self.display()

    def display(self):
        print("Current conditions: %.1fF degrees and %.1f%% humidity" %
              (self.temperature, self.humidity))


class StatisticsDisplay(object):
    max_temp = 0.0
    min_temp = 200
    temp_sum = 0.0
    num_readings = 0

    def __init__(self, weather_data):
        self.weather_data = weather_data
        self.weather_data.register_observer(self)

    def update(self, temperature, humidity, pressure):
        self.temp_sum += temperature
        self.num_readings += 1

        if temperature > self.max_temp:
            self.max_temp = temperature

        if temperature < self.min_temp:
            self.min_temp = temperature

        self.display()

    def display(self):
        print("Avg/Max/Min temperature = %.1f/%.1f/%.1f" %
              ((self.temp_sum / self.num_readings), self.max_temp,
               self.min_temp))


class ForecastDisplay(object):
    current_pressure = 29.92
    last_pressure = 0.0

    def __init__(self, weather_data):
        self.weather_data = weather_data
        self.weather_data.register_observer(self)

    def update(self, temperature, humidity, pressure):
        self.last_pressure = self.current_pressure
        self.current_pressure = pressure
        self.display()

    def display(self):
        print("Forecast: ", end='')
        if self.current_pressure > self.last_pressure:
            print("Improving weather on the way!")
        elif self.current_pressure == self.last_pressure:
            print("More of the same")
        elif self.current_pressure < self.last_pressure:
            print("Watch out for cooler, rainy weather")


class HeatIndexDisplay(object):
    heat_index = 0.0

    def __init__(self, weather_data):
        self.weather_data = weather_data
        self.weather_data.register_observer(self)

    def update(self, temperature, humidity, pressure):
        self.heat_index = self.compute_heat_index(temperature, humidity)
        self.display()

    def compute_heat_index(self, temperature, humidity):
        t, rh = temperature, humidity
        return float((
                16.923 + (0.185212 * t) + (5.37941 * rh) -
                (0.100254 * t * rh) +
                (0.00941695 * (t * t)) +
                (0.00728898 * (rh * rh)) +
                (0.000345372 * (t * t * rh)) -
                (0.000814971 * (t * rh * rh)) +
                (0.0000102102 * (t * t * rh * rh)) -
                (0.000038646 * (t * t * t)) +
                (0.0000291583 * (rh * rh * rh)) +
                (0.00000142721 * (t * t * t * rh)) +
                (0.000000197483 * (t * rh * rh * rh)) -
                (0.0000000218429 * (t * t * t * rh * rh)) +
                0.000000000843296 * (t * t * rh * rh * rh)
            ) - (0.0000000000481975 * (t * t * t * rh * rh * rh))
        )

    def display(self):
        print("Heat index is %.4f" % self.heat_index)

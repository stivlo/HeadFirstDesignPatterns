package headfirst.observer.weather;

import java.util.Observable;
import java.util.Observer;


public class StatisticsDisplay implements Observer, DisplayElement {
    public float maxTemp = 0.0f;
    public float minTemp = 200;
    public float tempSum = 0.0f;
    public int numReadings;
    public WeatherData weatherData;

    public StatisticsDisplay(WeatherData weatherData) {
        this.weatherData = weatherData;
        weatherData.addObserver(this);
    }

    public void update(Observable obs, Object arg) {
        if (obs instanceof WeatherData) {
            WeatherData weatherData = (WeatherData)obs;

            float temperature = weatherData.getTemperature();
            tempSum += temperature;
            numReadings++;

            if (temperature > maxTemp) {
                maxTemp = temperature;
            }

            if (temperature < minTemp) {
                minTemp = temperature;
            }

            display();
        }
    }

    public void display() {
        System.out.println("Avg/Max/Min temperature = " + (tempSum / numReadings)
                           + "/" + maxTemp + "/" + minTemp);
    }
}

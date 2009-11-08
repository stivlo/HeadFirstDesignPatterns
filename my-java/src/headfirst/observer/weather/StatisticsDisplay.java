package headfirst.observer.weather;

public class StatisticsDisplay implements Observer, DisplayElement {
    public float maxTemp = 0.0f;
    public float minTemp = 200;
    public float tempSum = 0.0f;
    public int numReadings;
    public WeatherData weatherData;

    public StatisticsDisplay(WeatherData weatherData) {
        this.weatherData = weatherData;
        weatherData.registerObserver(this);
    }

    public void update(float temperature, float humidity, float pressure) {
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

    public void display() {
        System.out.println("Avg/Max/Min temperature = " + (tempSum / numReadings)
                           + "/" + maxTemp + "/" + minTemp);
    }
}

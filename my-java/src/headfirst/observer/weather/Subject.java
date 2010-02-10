package headfirst.observer.weather;

import java.util.Observer;


public interface Subject {
    public void registerObserver(Observer o);
    public void removeObserver(Observer o);
    public void notifyObservers();
}

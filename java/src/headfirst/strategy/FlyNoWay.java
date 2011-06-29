package headfirst.strategy;

public class FlyNoWay implements FlyBehavior {
    
    public void fly() {
        System.out.println("FlyNoWay.fly()");
        System.out.println("I can't fly");
    }

}

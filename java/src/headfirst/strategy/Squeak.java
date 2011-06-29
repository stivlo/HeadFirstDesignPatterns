package headfirst.strategy;

public class Squeak implements QuackBehavior {

    public void quack() {
        System.out.println("Squeak.quack()");
        System.out.println("Squeak");
    }

}

package headfirst.strategy;

/** 
 * Base abstract class for Duck
 */
public abstract class Duck {

    //Behaviors are instance variables
    FlyBehavior flyBehavior;
    QuackBehavior quackBehavior;
 
    public Duck() {
    }
 
    public void setFlyBehavior (FlyBehavior fb) {
        flyBehavior = fb;
    }
 
    public void setQuackBehavior(QuackBehavior qb) {
        quackBehavior = qb;
    }
 
    abstract void display();
 
    public void performFly() {
        System.out.println("Duck.performFly()");
        flyBehavior.fly();
    }
 
    public void performQuack() {
        System.out.println("Duck.performQuack()");
        quackBehavior.quack();
    }
 
    public void swim() {
        System.out.println("Duck.swim()");
        System.out.println("All ducks float, even decoys!");
    }

}

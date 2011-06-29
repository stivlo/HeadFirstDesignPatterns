package headfirst.strategy;

public class MiniDuckSimulator1 {
 
    public static void main(String[] args) {
        Duck mallard = new MallardDuck();
        System.out.println("Going to call MallardDuck.performQuack()");
        mallard.performQuack();
        System.out.println("Going to call MallardDuck.performFly()");
        mallard.performFly();
   
        Duck model = new ModelDuck();
        System.out.println("Going to call ModelDuck.performFly()");
        model.performFly();
        model.setFlyBehavior(new FlyRocketPowered());
        System.out.println("Going to call ModelDuck.performFly() after setting behavior at runtime()");
        model.performFly();
    }

}

package headfirst.strategy;

public class MiniDuckSimulator {
 
    public static void main(String[] args) {
        MallardDuck    mallard = new MallardDuck();
        RubberDuck    rubberDuckie = new RubberDuck();
        DecoyDuck    decoy = new DecoyDuck();
        ModelDuck    model = new ModelDuck();

        System.out.println("\nGoing to call MallardDuck.performQuack()");
        mallard.performQuack();

        System.out.println("\nGoing to call RubberDuck.performQuack()");
        rubberDuckie.performQuack();

        System.out.println("\nGoing to call DecoyDuck.performQuack()");
        decoy.performQuack();
   
        System.out.println("\nGoing to call ModelDuck.performFly()");
        model.performFly();    

        model.setFlyBehavior(new FlyRocketPowered());
        System.out.println("\nGoing to call ModelDuck.performFly() after setting setFlyBehavior()");
        model.performFly();
    }

}

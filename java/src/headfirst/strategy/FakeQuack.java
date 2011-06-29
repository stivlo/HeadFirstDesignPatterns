package headfirst.strategy;

public class FakeQuack implements QuackBehavior {

    public void quack() {
        System.out.println("FakeQuack.quack()");
        System.out.println("Qwak");
    }

}

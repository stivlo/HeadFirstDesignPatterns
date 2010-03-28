package headfirst.factory.pizzas;


public class PizzaTestDrive {

    public static void main(String[] args) {
        SimplePizzaFactory factory = new SimplePizzaFactory();
        PizzaStore store = new PizzaStore(factory);

        orderAndAnnounce(store, "cheese");
        orderAndAnnounce(store, "veggie");
    }

    public static void orderAndAnnounce(PizzaStore store, String pizzaType) {
        Pizza pizza = store.orderPizza(pizzaType);
        System.out.println("We ordered a " + pizza.getName() + "\n");
    }
}

package headfirst.factory.pizzas;


public class GreekPizza extends Pizza {

    public GreekPizza() {
        name = "Greek Pizza";
        dough = "Thin Crust";
        sauce = "Olive Oil";
        toppings.add("Mozzarella");
        toppings.add("Feta Cheese");
        toppings.add("Olives");
        toppings.add("Spinach");
    }
}

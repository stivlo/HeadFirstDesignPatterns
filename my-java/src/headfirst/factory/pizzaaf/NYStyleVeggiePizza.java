package headfirst.factory.pizzaaf;


public class NYStyleVeggiePizza extends Pizza {

    public NYStyleVeggiePizza() {
        name = "NY Style Veggie Pizza";
        dough = "Thin Crust Dough";
        sauce = "Marinara Sauce";

        toppings.add("Grated Reggiano Cheese");
        toppings.add("Peppers");
        toppings.add("Onions");
        toppings.add("Spinach");
    }
}

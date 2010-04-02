package headfirst.factory.pizzaaf;


public class ChicagoStyleVeggiePizza extends Pizza {

    public ChicagoStyleVeggiePizza() {
        name = "Chicago Style Deep Dish Cheese Pizza";
        dough = "Extra Thick Crust Dough";
        sauce = "Plum Tomato Sauce";

        toppings.add("Shredded Mozzarella Cheese");
        toppings.add("Peppers");
        toppings.add("Onions");
        toppings.add("Spinach");
    }

    void cut() {
        info("Cutting the pizza into square slices");
    }
}

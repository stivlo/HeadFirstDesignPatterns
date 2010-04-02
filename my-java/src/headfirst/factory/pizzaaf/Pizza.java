package headfirst.factory.pizzaaf;

import java.util.ArrayList;


public abstract class Pizza {
    String name = "nondescript Pizza";
    String dough;
    String sauce;
    ArrayList toppings = new ArrayList();

    void prepare() {
        info("Preparing " + name);
        info("Tossing dough...");
        info("Adding sauce...");
        info("Adding toppings: ");

        for (int i = 0; i < toppings.size(); i++) {
            info("    " + toppings.get(i));
        }
    }

    void info(String string) {
        System.out.println(string);
    }

    void bake() {
        info("Bake for 25 minutes at 350");
    }

    void cut() {
        info("Cutting the pizza into diagonal slices");
    }

    void box() {
        info("Place pizza in official PizzaStore box");
    }

    String getName() {
        return name;
    }
}

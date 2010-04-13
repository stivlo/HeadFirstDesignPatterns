package headfirst.factory.pizzaaf2;


public abstract class Pizza {
    String name = "nondescript Pizza";
    Dough dough;
    Sauce sauce;
    Veggies veggies[];
    Cheese cheese;
    Pepperoni pepperoni;
    Clams clams;

    abstract void prepare();

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

    void setName(String name) {
        this.name = name;
    }

    String getName() {
        return name;
    }

    public String toString() {
        // code to print pizza here
        return "";
    }
}

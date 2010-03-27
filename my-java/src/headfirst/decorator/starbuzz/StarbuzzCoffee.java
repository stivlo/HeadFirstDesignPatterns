package headfirst.decorator.starbuzz;

public class StarbuzzCoffee {

    public static void main(String args[]) {
        showEspresso();
        showDarkRoast();
        showHouseBlend();
    }

    public static void show(Beverage beverage) {
        System.out.println(beverage.getDescription()
            + " $" + beverage.cost());
    }

    public static void showEspresso() {
        Beverage beverage = new Espresso();
        show(beverage);
    }

    public static void showDarkRoast() {
        Beverage beverage = new DarkRoast();

        beverage = new Mocha(beverage);
        beverage = new Mocha(beverage);
        beverage = new Whip(beverage);

        show(beverage);
    }

    public static void showHouseBlend() {
        Beverage beverage = new HouseBlend();

        beverage = new Soy(beverage);
        beverage = new Mocha(beverage);
        beverage = new Whip(beverage);

        show(beverage);
    }
}

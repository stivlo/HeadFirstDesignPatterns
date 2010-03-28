package headfirst.factory.pizzas;


public class PepperoniPizza extends Pizza {

	public PepperoniPizza() {
		name = "Pepperoni Pizza";
		dough = "Regular Crust";
		sauce = "Marinara Pizza Sauce";
		toppings.add("Fresh Mozzarella");
		toppings.add("Parmesan");
		toppings.add("Pepperoni");
	}
}

package headfirst.factory.pizzas;


public class VeggiePizza extends Pizza {

	public VeggiePizza() {
		name = "Veggie Pizza";
		dough = "Regular Crust";
		sauce = "Marinara Sauce";
		toppings.add("Mozzarella");
		toppings.add("Tomatoes");
		toppings.add("Peppers");
		toppings.add("Onions");
	}
}

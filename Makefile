JAVAC = javac
CLASSES_DIR = $(PWD)/classes
DIST_DIR = $(PWD)/dist
CLASSES_ARG = -d $(CLASSES_DIR)
JAVAC_FLAGS = -Xlint:unchecked
JAR = jar
JAR_ARGS = cvf
HEADFIRST_JAR = headfirst.jar

JAVA_CLASSES =  \
	classes/headfirst/adapter/ducks/Duck.class \
	classes/headfirst/adapter/ducks/DuckAdapter.class \
	classes/headfirst/adapter/ducks/DuckTestDrive.class \
	classes/headfirst/adapter/ducks/MallardDuck.class \
	classes/headfirst/adapter/ducks/Turkey.class \
	classes/headfirst/adapter/ducks/TurkeyAdapter.class \
	classes/headfirst/adapter/ducks/TurkeyTestDrive.class \
	classes/headfirst/adapter/ducks/WildTurkey.class \
	classes/headfirst/adapter/iterenum/EI.class \
	classes/headfirst/adapter/iterenum/EnumerationIterator.class \
	classes/headfirst/adapter/iterenum/EnumerationIteratorTestDrive.class \
	classes/headfirst/adapter/iterenum/IteratorEnumeration.class \
	classes/headfirst/adapter/iterenum/IteratorEnumerationTestDrive.class \
	classes/headfirst/combined/djview/BPMObserver.class \
	classes/headfirst/combined/djview/BeatBar.class \
	classes/headfirst/combined/djview/BeatController.class \
	classes/headfirst/combined/djview/BeatModel.class \
	classes/headfirst/combined/djview/BeatModelInterface.class \
	classes/headfirst/combined/djview/BeatObserver.class \
	classes/headfirst/combined/djview/ControllerInterface.class \
	classes/headfirst/combined/djview/DJTestDrive.class \
	classes/headfirst/combined/djview/DJView.class \
	classes/headfirst/combined/djview/HeartAdapter.class \
	classes/headfirst/combined/djview/HeartController.class \
	classes/headfirst/combined/djview/HeartModel.class \
	classes/headfirst/combined/djview/HeartModelInterface.class \
	classes/headfirst/combined/djview/HeartTestDrive.class \
	classes/headfirst/combining/adapter/DecoyDuck.class \
	classes/headfirst/combining/adapter/DuckCall.class \
	classes/headfirst/combining/adapter/DuckSimulator.class \
	classes/headfirst/combining/adapter/Goose.class \
	classes/headfirst/combining/adapter/GooseAdapter.class \
	classes/headfirst/combining/adapter/MallardDuck.class \
	classes/headfirst/combining/adapter/Quackable.class \
	classes/headfirst/combining/adapter/RedheadDuck.class \
	classes/headfirst/combining/adapter/RubberDuck.class \
	classes/headfirst/combining/composite/AbstractDuckFactory.class \
	classes/headfirst/combining/composite/CountingDuckFactory.class \
	classes/headfirst/combining/composite/DecoyDuck.class \
	classes/headfirst/combining/composite/DuckCall.class \
	classes/headfirst/combining/composite/DuckFactory.class \
	classes/headfirst/combining/composite/DuckSimulator.class \
	classes/headfirst/combining/composite/Flock.class \
	classes/headfirst/combining/composite/Goose.class \
	classes/headfirst/combining/composite/GooseAdapter.class \
	classes/headfirst/combining/composite/MallardDuck.class \
	classes/headfirst/combining/composite/QuackCounter.class \
	classes/headfirst/combining/composite/Quackable.class \
	classes/headfirst/combining/composite/RedheadDuck.class \
	classes/headfirst/combining/composite/RubberDuck.class \
	classes/headfirst/combining/decorator/DecoyDuck.class \
	classes/headfirst/combining/decorator/DuckCall.class \
	classes/headfirst/combining/decorator/DuckSimulator.class \
	classes/headfirst/combining/decorator/Goose.class \
	classes/headfirst/combining/decorator/GooseAdapter.class \
	classes/headfirst/combining/decorator/MallardDuck.class \
	classes/headfirst/combining/decorator/QuackCounter.class \
	classes/headfirst/combining/decorator/Quackable.class \
	classes/headfirst/combining/decorator/RedheadDuck.class \
	classes/headfirst/combining/decorator/RubberDuck.class \
	classes/headfirst/combining/ducks/DecoyDuck.class \
	classes/headfirst/combining/ducks/DuckCall.class \
	classes/headfirst/combining/ducks/DuckSimulator.class \
	classes/headfirst/combining/ducks/MallardDuck.class \
	classes/headfirst/combining/ducks/Quackable.class \
	classes/headfirst/combining/ducks/RedheadDuck.class \
	classes/headfirst/combining/ducks/RubberDuck.class \
	classes/headfirst/combining/factory/AbstractDuckFactory.class \
	classes/headfirst/combining/factory/CountingDuckFactory.class \
	classes/headfirst/combining/factory/DecoyDuck.class \
	classes/headfirst/combining/factory/DuckCall.class \
	classes/headfirst/combining/factory/DuckFactory.class \
	classes/headfirst/combining/factory/DuckSimulator.class \
	classes/headfirst/combining/factory/Goose.class \
	classes/headfirst/combining/factory/GooseAdapter.class \
	classes/headfirst/combining/factory/MallardDuck.class \
	classes/headfirst/combining/factory/QuackCounter.class \
	classes/headfirst/combining/factory/Quackable.class \
	classes/headfirst/combining/factory/RedheadDuck.class \
	classes/headfirst/combining/factory/RubberDuck.class \
	classes/headfirst/combining/observer/AbstractDuckFactory.class \
	classes/headfirst/combining/observer/CountingDuckFactory.class \
	classes/headfirst/combining/observer/DecoyDuck.class \
	classes/headfirst/combining/observer/DuckCall.class \
	classes/headfirst/combining/observer/DuckFactory.class \
	classes/headfirst/combining/observer/DuckSimulator.class \
	classes/headfirst/combining/observer/Flock.class \
	classes/headfirst/combining/observer/Goose.class \
	classes/headfirst/combining/observer/GooseAdapter.class \
	classes/headfirst/combining/observer/MallardDuck.class \
	classes/headfirst/combining/observer/Observable.class \
	classes/headfirst/combining/observer/Observer.class \
	classes/headfirst/combining/observer/QuackCounter.class \
	classes/headfirst/combining/observer/QuackObservable.class \
	classes/headfirst/combining/observer/Quackable.class \
	classes/headfirst/combining/observer/Quackologist.class \
	classes/headfirst/combining/observer/RedheadDuck.class \
	classes/headfirst/combining/observer/RubberDuck.class \
	classes/headfirst/command/party/CeilingFan.class \
	classes/headfirst/command/party/CeilingFanHighCommand.class \
	classes/headfirst/command/party/CeilingFanMediumCommand.class \
	classes/headfirst/command/party/CeilingFanOffCommand.class \
	classes/headfirst/command/party/Command.class \
	classes/headfirst/command/party/Hottub.class \
	classes/headfirst/command/party/HottubOffCommand.class \
	classes/headfirst/command/party/HottubOnCommand.class \
	classes/headfirst/command/party/Light.class \
	classes/headfirst/command/party/LightOffCommand.class \
	classes/headfirst/command/party/LightOnCommand.class \
	classes/headfirst/command/party/LivingroomLightOffCommand.class \
	classes/headfirst/command/party/LivingroomLightOnCommand.class \
	classes/headfirst/command/party/MacroCommand.class \
	classes/headfirst/command/party/NoCommand.class \
	classes/headfirst/command/party/RemoteControl.class \
	classes/headfirst/command/party/RemoteLoader.class \
	classes/headfirst/command/party/Stereo.class \
	classes/headfirst/command/party/StereoOffCommand.class \
	classes/headfirst/command/party/StereoOnCommand.class \
	classes/headfirst/command/party/StereoOnWithCDCommand.class \
	classes/headfirst/command/party/TV.class \
	classes/headfirst/command/party/TVOffCommand.class \
	classes/headfirst/command/party/TVOnCommand.class \
	classes/headfirst/command/remote/CeilingFan.class \
	classes/headfirst/command/remote/CeilingFanOffCommand.class \
	classes/headfirst/command/remote/CeilingFanOnCommand.class \
	classes/headfirst/command/remote/Command.class \
	classes/headfirst/command/remote/GarageDoor.class \
	classes/headfirst/command/remote/GarageDoorDownCommand.class \
	classes/headfirst/command/remote/GarageDoorUpCommand.class \
	classes/headfirst/command/remote/Hottub.class \
	classes/headfirst/command/remote/HottubOffCommand.class \
	classes/headfirst/command/remote/HottubOnCommand.class \
	classes/headfirst/command/remote/Light.class \
	classes/headfirst/command/remote/LightOffCommand.class \
	classes/headfirst/command/remote/LightOnCommand.class \
	classes/headfirst/command/remote/LivingroomLightOffCommand.class \
	classes/headfirst/command/remote/LivingroomLightOnCommand.class \
	classes/headfirst/command/remote/NoCommand.class \
	classes/headfirst/command/remote/RemoteControl.class \
	classes/headfirst/command/remote/RemoteLoader.class \
	classes/headfirst/command/remote/Stereo.class \
	classes/headfirst/command/remote/StereoOffCommand.class \
	classes/headfirst/command/remote/StereoOnWithCDCommand.class \
	classes/headfirst/command/remote/TV.class \
	classes/headfirst/command/simpleremote/Command.class \
	classes/headfirst/command/simpleremote/GarageDoor.class \
	classes/headfirst/command/simpleremote/GarageDoorOpenCommand.class \
	classes/headfirst/command/simpleremote/Light.class \
	classes/headfirst/command/simpleremote/LightOffCommand.class \
	classes/headfirst/command/simpleremote/LightOnCommand.class \
	classes/headfirst/command/simpleremote/RemoteControlTest.class \
	classes/headfirst/command/simpleremote/SimpleRemoteControl.class \
	classes/headfirst/command/undo/CeilingFan.class \
	classes/headfirst/command/undo/CeilingFanHighCommand.class \
	classes/headfirst/command/undo/CeilingFanLowCommand.class \
	classes/headfirst/command/undo/CeilingFanMediumCommand.class \
	classes/headfirst/command/undo/CeilingFanOffCommand.class \
	classes/headfirst/command/undo/Command.class \
	classes/headfirst/command/undo/DimmerLightOffCommand.class \
	classes/headfirst/command/undo/DimmerLightOnCommand.class \
	classes/headfirst/command/undo/Light.class \
	classes/headfirst/command/undo/LightOffCommand.class \
	classes/headfirst/command/undo/LightOnCommand.class \
	classes/headfirst/command/undo/NoCommand.class \
	classes/headfirst/command/undo/RemoteControlWithUndo.class \
	classes/headfirst/command/undo/RemoteLoader.class \
	classes/headfirst/composite/menu/Menu.class \
	classes/headfirst/composite/menu/MenuComponent.class \
	classes/headfirst/composite/menu/MenuItem.class \
	classes/headfirst/composite/menu/MenuTestDrive.class \
	classes/headfirst/composite/menu/Waitress.class \
	classes/headfirst/composite/menuiterator/CompositeIterator.class \
	classes/headfirst/composite/menuiterator/Menu.class \
	classes/headfirst/composite/menuiterator/MenuComponent.class \
	classes/headfirst/composite/menuiterator/MenuItem.class \
	classes/headfirst/composite/menuiterator/MenuTestDrive.class \
	classes/headfirst/composite/menuiterator/NullIterator.class \
	classes/headfirst/composite/menuiterator/Waitress.class \
	classes/headfirst/decorator/io/InputTest.class \
	classes/headfirst/decorator/io/LowerCaseInputStream.class \
	classes/headfirst/decorator/starbuzz/Beverage.class \
	classes/headfirst/decorator/starbuzz/CondimentDecorator.class \
	classes/headfirst/decorator/starbuzz/DarkRoast.class \
	classes/headfirst/decorator/starbuzz/Decaf.class \
	classes/headfirst/decorator/starbuzz/Espresso.class \
	classes/headfirst/decorator/starbuzz/HouseBlend.class \
	classes/headfirst/decorator/starbuzz/Milk.class \
	classes/headfirst/decorator/starbuzz/Mocha.class \
	classes/headfirst/decorator/starbuzz/Soy.class \
	classes/headfirst/decorator/starbuzz/StarbuzzCoffee.class \
	classes/headfirst/decorator/starbuzz/Whip.class \
	classes/headfirst/facade/hometheater/Amplifier.class \
	classes/headfirst/facade/hometheater/CdPlayer.class \
	classes/headfirst/facade/hometheater/DvdPlayer.class \
	classes/headfirst/facade/hometheater/HomeTheaterFacade.class \
	classes/headfirst/facade/hometheater/HomeTheaterTestDrive.class \
	classes/headfirst/facade/hometheater/PopcornPopper.class \
	classes/headfirst/facade/hometheater/Projector.class \
	classes/headfirst/facade/hometheater/Screen.class \
	classes/headfirst/facade/hometheater/TheaterLights.class \
	classes/headfirst/facade/hometheater/Tuner.class \
	classes/headfirst/factory/pizzaaf/BlackOlives.class \
	classes/headfirst/factory/pizzaaf/Cheese.class \
	classes/headfirst/factory/pizzaaf/CheesePizza.class \
	classes/headfirst/factory/pizzaaf/ChicagoPizzaIngredientFactory.class \
	classes/headfirst/factory/pizzaaf/ChicagoPizzaStore.class \
	classes/headfirst/factory/pizzaaf/ClamPizza.class \
	classes/headfirst/factory/pizzaaf/Clams.class \
	classes/headfirst/factory/pizzaaf/Dough.class \
	classes/headfirst/factory/pizzaaf/Eggplant.class \
	classes/headfirst/factory/pizzaaf/FreshClams.class \
	classes/headfirst/factory/pizzaaf/FrozenClams.class \
	classes/headfirst/factory/pizzaaf/Garlic.class \
	classes/headfirst/factory/pizzaaf/MarinaraSauce.class \
	classes/headfirst/factory/pizzaaf/MozzarellaCheese.class \
	classes/headfirst/factory/pizzaaf/Mushroom.class \
	classes/headfirst/factory/pizzaaf/NYPizzaIngredientFactory.class \
	classes/headfirst/factory/pizzaaf/NYPizzaStore.class \
	classes/headfirst/factory/pizzaaf/Onion.class \
	classes/headfirst/factory/pizzaaf/ParmesanCheese.class \
	classes/headfirst/factory/pizzaaf/Pepperoni.class \
	classes/headfirst/factory/pizzaaf/PepperoniPizza.class \
	classes/headfirst/factory/pizzaaf/Pizza.class \
	classes/headfirst/factory/pizzaaf/PizzaIngredientFactory.class \
	classes/headfirst/factory/pizzaaf/PizzaStore.class \
	classes/headfirst/factory/pizzaaf/PizzaTestDrive.class \
	classes/headfirst/factory/pizzaaf/PlumTomatoSauce.class \
	classes/headfirst/factory/pizzaaf/RedPepper.class \
	classes/headfirst/factory/pizzaaf/ReggianoCheese.class \
	classes/headfirst/factory/pizzaaf/Sauce.class \
	classes/headfirst/factory/pizzaaf/SlicedPepperoni.class \
	classes/headfirst/factory/pizzaaf/Spinach.class \
	classes/headfirst/factory/pizzaaf/ThickCrustDough.class \
	classes/headfirst/factory/pizzaaf/ThinCrustDough.class \
	classes/headfirst/factory/pizzaaf/VeggiePizza.class \
	classes/headfirst/factory/pizzaaf/Veggies.class \
	classes/headfirst/factory/pizzafm/ChicagoPizzaStore.class \
	classes/headfirst/factory/pizzafm/ChicagoStyleCheesePizza.class \
	classes/headfirst/factory/pizzafm/ChicagoStyleClamPizza.class \
	classes/headfirst/factory/pizzafm/ChicagoStylePepperoniPizza.class \
	classes/headfirst/factory/pizzafm/ChicagoStyleVeggiePizza.class \
	classes/headfirst/factory/pizzafm/DependentPizzaStore.class \
	classes/headfirst/factory/pizzafm/NYPizzaStore.class \
	classes/headfirst/factory/pizzafm/NYStyleCheesePizza.class \
	classes/headfirst/factory/pizzafm/NYStyleClamPizza.class \
	classes/headfirst/factory/pizzafm/NYStylePepperoniPizza.class \
	classes/headfirst/factory/pizzafm/NYStyleVeggiePizza.class \
	classes/headfirst/factory/pizzafm/Pizza.class \
	classes/headfirst/factory/pizzafm/PizzaStore.class \
	classes/headfirst/factory/pizzafm/PizzaTestDrive.class \
	classes/headfirst/factory/pizzas/CheesePizza.class \
	classes/headfirst/factory/pizzas/ClamPizza.class \
	classes/headfirst/factory/pizzas/PepperoniPizza.class \
	classes/headfirst/factory/pizzas/Pizza.class \
	classes/headfirst/factory/pizzas/PizzaStore.class \
	classes/headfirst/factory/pizzas/PizzaTestDrive.class \
	classes/headfirst/factory/pizzas/SimplePizzaFactory.class \
	classes/headfirst/factory/pizzas/VeggiePizza.class \
	classes/headfirst/iterator/dinermerger/AlternatingDinerMenuIterator.class \
	classes/headfirst/iterator/dinermerger/ArrayIterator.class \
	classes/headfirst/iterator/dinermerger/ArrayListIterator.class \
	classes/headfirst/iterator/dinermerger/DinerMenu.class \
	classes/headfirst/iterator/dinermerger/DinerMenuIterator.class \
	classes/headfirst/iterator/dinermerger/Iterator.class \
	classes/headfirst/iterator/dinermerger/Menu.class \
	classes/headfirst/iterator/dinermerger/MenuItem.class \
	classes/headfirst/iterator/dinermerger/MenuTestDrive.class \
	classes/headfirst/iterator/dinermerger/PancakeHouseMenu.class \
	classes/headfirst/iterator/dinermerger/PancakeHouseMenuIterator.class \
	classes/headfirst/iterator/dinermerger/Waitress.class \
	classes/headfirst/iterator/dinermergercafe/AlternatingDinerMenuIterator.class \
	classes/headfirst/iterator/dinermergercafe/CafeMenu.class \
	classes/headfirst/iterator/dinermergercafe/DinerMenu.class \
	classes/headfirst/iterator/dinermergercafe/DinerMenuIterator.class \
	classes/headfirst/iterator/dinermergercafe/Menu.class \
	classes/headfirst/iterator/dinermergercafe/MenuItem.class \
	classes/headfirst/iterator/dinermergercafe/MenuTestDrive.class \
	classes/headfirst/iterator/dinermergercafe/PancakeHouseMenu.class \
	classes/headfirst/iterator/dinermergercafe/Waitress.class \
	classes/headfirst/iterator/dinermergeri/AlternatingDinerMenuIterator.class \
	classes/headfirst/iterator/dinermergeri/DinerMenu.class \
	classes/headfirst/iterator/dinermergeri/DinerMenuIterator.class \
	classes/headfirst/iterator/dinermergeri/Menu.class \
	classes/headfirst/iterator/dinermergeri/MenuItem.class \
	classes/headfirst/iterator/dinermergeri/MenuTestDrive.class \
	classes/headfirst/iterator/dinermergeri/PancakeHouseMenu.class \
	classes/headfirst/iterator/dinermergeri/Waitress.class \
	classes/headfirst/iterator/transition/Menu.class \
	classes/headfirst/iterator/transition/MenuItem.class \
	classes/headfirst/iterator/transition/Waitress.class \
	classes/headfirst/observer/swing/SwingObserverExample.class \
	classes/headfirst/observer/weather/CurrentConditionsDisplay.class \
	classes/headfirst/observer/weather/DisplayElement.class \
	classes/headfirst/observer/weather/ForecastDisplay.class \
	classes/headfirst/observer/weather/HeatIndexDisplay.class \
	classes/headfirst/observer/weather/Observer.class \
	classes/headfirst/observer/weather/StatisticsDisplay.class \
	classes/headfirst/observer/weather/Subject.class \
	classes/headfirst/observer/weather/WeatherData.class \
	classes/headfirst/observer/weather/WeatherStation.class \
	classes/headfirst/observer/weather/WeatherStationHeatIndex.class \
	classes/headfirst/observer/weatherobservable/CurrentConditionsDisplay.class \
	classes/headfirst/observer/weatherobservable/DisplayElement.class \
	classes/headfirst/observer/weatherobservable/ForecastDisplay.class \
	classes/headfirst/observer/weatherobservable/HeatIndexDisplay.class \
	classes/headfirst/observer/weatherobservable/StatisticsDisplay.class \
	classes/headfirst/observer/weatherobservable/WeatherData.class \
	classes/headfirst/observer/weatherobservable/WeatherStation.class \
	classes/headfirst/observer/weatherobservable/WeatherStationHeatIndex.class \
	classes/headfirst/proxy/gumball/GumballMachine.class \
	classes/headfirst/proxy/gumball/GumballMachineRemote.class \
	classes/headfirst/proxy/gumball/GumballMachineTestDrive.class \
	classes/headfirst/proxy/gumball/GumballMonitor.class \
	classes/headfirst/proxy/gumball/GumballMonitorTestDrive.class \
	classes/headfirst/proxy/gumball/HasQuarterState.class \
	classes/headfirst/proxy/gumball/NoQuarterState.class \
	classes/headfirst/proxy/gumball/SoldOutState.class \
	classes/headfirst/proxy/gumball/SoldState.class \
	classes/headfirst/proxy/gumball/State.class \
	classes/headfirst/proxy/gumball/WinnerState.class \
	classes/headfirst/proxy/gumballmonitor/GumballMachine.class \
	classes/headfirst/proxy/gumballmonitor/GumballMachineTestDrive.class \
	classes/headfirst/proxy/gumballmonitor/GumballMonitor.class \
	classes/headfirst/proxy/gumballmonitor/HasQuarterState.class \
	classes/headfirst/proxy/gumballmonitor/NoQuarterState.class \
	classes/headfirst/proxy/gumballmonitor/SoldOutState.class \
	classes/headfirst/proxy/gumballmonitor/SoldState.class \
	classes/headfirst/proxy/gumballmonitor/State.class \
	classes/headfirst/proxy/gumballmonitor/WinnerState.class \
	classes/headfirst/proxy/javaproxy/MatchMakingTestDrive.class \
	classes/headfirst/proxy/javaproxy/NonOwnerInvocationHandler.class \
	classes/headfirst/proxy/javaproxy/OwnerInvocationHandler.class \
	classes/headfirst/proxy/javaproxy/PersonBean.class \
	classes/headfirst/proxy/javaproxy/PersonBeanImpl.class \
	classes/headfirst/proxy/virtualproxy/ImageComponent.class \
	classes/headfirst/proxy/virtualproxy/ImageProxy.class \
	classes/headfirst/proxy/virtualproxy/ImageProxyTestDrive.class \
	classes/headfirst/singleton/chocolate/ChocolateBoiler.class \
	classes/headfirst/singleton/chocolate/ChocolateController.class \
	classes/headfirst/singleton/classic/Singleton.class \
	classes/headfirst/singleton/dcl/Singleton.class \
	classes/headfirst/singleton/dcl/SingletonClient.class \
	classes/headfirst/singleton/stat/Singleton.class \
	classes/headfirst/singleton/stat/SingletonClient.class \
	classes/headfirst/singleton/subclass/CoolerSingleton.class \
	classes/headfirst/singleton/subclass/HotterSingleton.class \
	classes/headfirst/singleton/subclass/Singleton.class \
	classes/headfirst/singleton/subclass/SingletonTestDrive.class \
	classes/headfirst/singleton/threadsafe/Singleton.class \
	classes/headfirst/state/gumball/GumballMachine.class \
	classes/headfirst/state/gumball/GumballMachineTestDrive.class \
	classes/headfirst/state/gumballstate/GumballMachine.class \
	classes/headfirst/state/gumballstate/GumballMachineTestDrive.class \
	classes/headfirst/state/gumballstate/HasQuarterState.class \
	classes/headfirst/state/gumballstate/NoQuarterState.class \
	classes/headfirst/state/gumballstate/SoldOutState.class \
	classes/headfirst/state/gumballstate/SoldState.class \
	classes/headfirst/state/gumballstate/State.class \
	classes/headfirst/state/gumballstatewinner/GumballMachine.class \
	classes/headfirst/state/gumballstatewinner/GumballMachineTestDrive.class \
	classes/headfirst/state/gumballstatewinner/HasQuarterState.class \
	classes/headfirst/state/gumballstatewinner/NoQuarterState.class \
	classes/headfirst/state/gumballstatewinner/SoldOutState.class \
	classes/headfirst/state/gumballstatewinner/SoldState.class \
	classes/headfirst/state/gumballstatewinner/State.class \
	classes/headfirst/state/gumballstatewinner/WinnerState.class \
	classes/headfirst/strategy/Duck.class \
	classes/headfirst/strategy/FlyBehavior.class \
	classes/headfirst/strategy/FlyNoWay.class \
	classes/headfirst/strategy/FlyWithWings.class \
	classes/headfirst/strategy/MallardDuck.class \
	classes/headfirst/strategy/MiniDuckSimulator.class \
	classes/headfirst/strategy/MuteQuack.class \
	classes/headfirst/strategy/Quack.class \
	classes/headfirst/strategy/QuackBehavior.class \
	classes/headfirst/strategy/Squeak.class \
	classes/headfirst/templatemethod/applet/MyApplet.class \
	classes/headfirst/templatemethod/barista/BeverageTestDrive.class \
	classes/headfirst/templatemethod/barista/CaffeineBeverage.class \
	classes/headfirst/templatemethod/barista/CaffeineBeverageWithHook.class \
	classes/headfirst/templatemethod/barista/Coffee.class \
	classes/headfirst/templatemethod/barista/CoffeeWithHook.class \
	classes/headfirst/templatemethod/barista/Tea.class \
	classes/headfirst/templatemethod/barista/TeaWithHook.class \
	classes/headfirst/templatemethod/frame/MyFrame.class \
	classes/headfirst/templatemethod/simplebarista/Barista.class \
	classes/headfirst/templatemethod/simplebarista/Coffee.class \
	classes/headfirst/templatemethod/simplebarista/Tea.class \
	classes/headfirst/templatemethod/sort/Duck.class \
	classes/headfirst/templatemethod/sort/DuckSortTestDrive.class

all: $(DIST_DIR)/headfirst.jar



$(DIST_DIR)/headfirst.jar: $(JAVA_CLASSES)
	$(JAR) $(JAR_ARGS) $(HEADFIRST_JAR) -C $(CLASSES_DIR) .
	mv $(HEADFIRST_JAR) $(DIST_DIR)



_HEADFIRST_COMMAND_UNDO_CLASSES =  \
	classes/headfirst/command/undo/Command.class \
	classes/headfirst/command/undo/DimmerLightOnCommand.class \
	classes/headfirst/command/undo/CeilingFanHighCommand.class \
	classes/headfirst/command/undo/DimmerLightOffCommand.class \
	classes/headfirst/command/undo/RemoteLoader.class \
	classes/headfirst/command/undo/CeilingFanLowCommand.class \
	classes/headfirst/command/undo/NoCommand.class \
	classes/headfirst/command/undo/LightOffCommand.class \
	classes/headfirst/command/undo/CeilingFanMediumCommand.class \
	classes/headfirst/command/undo/Light.class \
	classes/headfirst/command/undo/CeilingFan.class \
	classes/headfirst/command/undo/CeilingFanOffCommand.class \
	classes/headfirst/command/undo/RemoteControlWithUndo.class \
	classes/headfirst/command/undo/LightOnCommand.class
_HEADFIRST_COMMAND_UNDO_SOURCES =  \
	src/headfirst/command/undo/CeilingFan.java \
	src/headfirst/command/undo/CeilingFanHighCommand.java \
	src/headfirst/command/undo/LightOffCommand.java \
	src/headfirst/command/undo/DimmerLightOnCommand.java \
	src/headfirst/command/undo/Command.java \
	src/headfirst/command/undo/LightOnCommand.java \
	src/headfirst/command/undo/CeilingFanMediumCommand.java \
	src/headfirst/command/undo/NoCommand.java \
	src/headfirst/command/undo/CeilingFanOffCommand.java \
	src/headfirst/command/undo/DimmerLightOffCommand.java \
	src/headfirst/command/undo/RemoteLoader.java \
	src/headfirst/command/undo/CeilingFanLowCommand.java \
	src/headfirst/command/undo/RemoteControlWithUndo.java \
	src/headfirst/command/undo/Light.java
$(_HEADFIRST_COMMAND_UNDO_CLASSES): $(_HEADFIRST_COMMAND_UNDO_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMMAND_UNDO_SOURCES)

_HEADFIRST_STRATEGY_CLASSES =  \
	classes/headfirst/strategy/Squeak.class \
	classes/headfirst/strategy/FlyWithWings.class \
	classes/headfirst/strategy/Quack.class \
	classes/headfirst/strategy/MiniDuckSimulator.class \
	classes/headfirst/strategy/MuteQuack.class \
	classes/headfirst/strategy/FlyBehavior.class \
	classes/headfirst/strategy/QuackBehavior.class \
	classes/headfirst/strategy/MallardDuck.class \
	classes/headfirst/strategy/FlyNoWay.class \
	classes/headfirst/strategy/Duck.class
_HEADFIRST_STRATEGY_SOURCES =  \
	src/headfirst/strategy/QuackBehavior.java \
	src/headfirst/strategy/MallardDuck.java \
	src/headfirst/strategy/Duck.java \
	src/headfirst/strategy/Squeak.java \
	src/headfirst/strategy/FlyBehavior.java \
	src/headfirst/strategy/FlyNoWay.java \
	src/headfirst/strategy/Quack.java \
	src/headfirst/strategy/FlyWithWings.java \
	src/headfirst/strategy/MuteQuack.java \
	src/headfirst/strategy/MiniDuckSimulator.java
$(_HEADFIRST_STRATEGY_CLASSES): $(_HEADFIRST_STRATEGY_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_STRATEGY_SOURCES)

_HEADFIRST_PROXY_JAVAPROXY_CLASSES =  \
	classes/headfirst/proxy/javaproxy/PersonBeanImpl.class \
	classes/headfirst/proxy/javaproxy/PersonBean.class \
	classes/headfirst/proxy/javaproxy/OwnerInvocationHandler.class \
	classes/headfirst/proxy/javaproxy/MatchMakingTestDrive.class \
	classes/headfirst/proxy/javaproxy/NonOwnerInvocationHandler.class
_HEADFIRST_PROXY_JAVAPROXY_SOURCES =  \
	src/headfirst/proxy/javaproxy/PersonBean.java \
	src/headfirst/proxy/javaproxy/PersonBeanImpl.java \
	src/headfirst/proxy/javaproxy/NonOwnerInvocationHandler.java \
	src/headfirst/proxy/javaproxy/OwnerInvocationHandler.java \
	src/headfirst/proxy/javaproxy/MatchMakingTestDrive.java
$(_HEADFIRST_PROXY_JAVAPROXY_CLASSES): $(_HEADFIRST_PROXY_JAVAPROXY_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_PROXY_JAVAPROXY_SOURCES)

_HEADFIRST_SINGLETON_THREADSAFE_CLASSES =  \
	classes/headfirst/singleton/threadsafe/Singleton.class
_HEADFIRST_SINGLETON_THREADSAFE_SOURCES =  \
	src/headfirst/singleton/threadsafe/Singleton.java
$(_HEADFIRST_SINGLETON_THREADSAFE_CLASSES): $(_HEADFIRST_SINGLETON_THREADSAFE_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_SINGLETON_THREADSAFE_SOURCES)

_HEADFIRST_SINGLETON_DCL_CLASSES =  \
	classes/headfirst/singleton/dcl/Singleton.class \
	classes/headfirst/singleton/dcl/SingletonClient.class
_HEADFIRST_SINGLETON_DCL_SOURCES =  \
	src/headfirst/singleton/dcl/SingletonClient.java \
	src/headfirst/singleton/dcl/Singleton.java
$(_HEADFIRST_SINGLETON_DCL_CLASSES): $(_HEADFIRST_SINGLETON_DCL_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_SINGLETON_DCL_SOURCES)

_HEADFIRST_SINGLETON_CLASSIC_CLASSES =  \
	classes/headfirst/singleton/classic/Singleton.class
_HEADFIRST_SINGLETON_CLASSIC_SOURCES =  \
	src/headfirst/singleton/classic/Singleton.java
$(_HEADFIRST_SINGLETON_CLASSIC_CLASSES): $(_HEADFIRST_SINGLETON_CLASSIC_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_SINGLETON_CLASSIC_SOURCES)

_HEADFIRST_COMBINING_COMPOSITE_CLASSES =  \
	classes/headfirst/combining/composite/QuackCounter.class \
	classes/headfirst/combining/composite/Flock.class \
	classes/headfirst/combining/composite/RedheadDuck.class \
	classes/headfirst/combining/composite/CountingDuckFactory.class \
	classes/headfirst/combining/composite/MallardDuck.class \
	classes/headfirst/combining/composite/RubberDuck.class \
	classes/headfirst/combining/composite/Quackable.class \
	classes/headfirst/combining/composite/AbstractDuckFactory.class \
	classes/headfirst/combining/composite/DuckFactory.class \
	classes/headfirst/combining/composite/DuckCall.class \
	classes/headfirst/combining/composite/Goose.class \
	classes/headfirst/combining/composite/GooseAdapter.class \
	classes/headfirst/combining/composite/DuckSimulator.class \
	classes/headfirst/combining/composite/DecoyDuck.class
_HEADFIRST_COMBINING_COMPOSITE_SOURCES =  \
	src/headfirst/combining/composite/DuckSimulator.java \
	src/headfirst/combining/composite/DuckFactory.java \
	src/headfirst/combining/composite/RedheadDuck.java \
	src/headfirst/combining/composite/DecoyDuck.java \
	src/headfirst/combining/composite/Quackable.java \
	src/headfirst/combining/composite/QuackCounter.java \
	src/headfirst/combining/composite/Flock.java \
	src/headfirst/combining/composite/AbstractDuckFactory.java \
	src/headfirst/combining/composite/MallardDuck.java \
	src/headfirst/combining/composite/GooseAdapter.java \
	src/headfirst/combining/composite/RubberDuck.java \
	src/headfirst/combining/composite/CountingDuckFactory.java \
	src/headfirst/combining/composite/DuckCall.java \
	src/headfirst/combining/composite/Goose.java
$(_HEADFIRST_COMBINING_COMPOSITE_CLASSES): $(_HEADFIRST_COMBINING_COMPOSITE_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMBINING_COMPOSITE_SOURCES)

_HEADFIRST_ADAPTER_DUCKS_CLASSES =  \
	classes/headfirst/adapter/ducks/TurkeyAdapter.class \
	classes/headfirst/adapter/ducks/TurkeyTestDrive.class \
	classes/headfirst/adapter/ducks/Turkey.class \
	classes/headfirst/adapter/ducks/MallardDuck.class \
	classes/headfirst/adapter/ducks/WildTurkey.class \
	classes/headfirst/adapter/ducks/DuckAdapter.class \
	classes/headfirst/adapter/ducks/DuckTestDrive.class \
	classes/headfirst/adapter/ducks/Duck.class
_HEADFIRST_ADAPTER_DUCKS_SOURCES =  \
	src/headfirst/adapter/ducks/Duck.java \
	src/headfirst/adapter/ducks/TurkeyAdapter.java \
	src/headfirst/adapter/ducks/WildTurkey.java \
	src/headfirst/adapter/ducks/Turkey.java \
	src/headfirst/adapter/ducks/DuckAdapter.java \
	src/headfirst/adapter/ducks/DuckTestDrive.java \
	src/headfirst/adapter/ducks/MallardDuck.java \
	src/headfirst/adapter/ducks/TurkeyTestDrive.java
$(_HEADFIRST_ADAPTER_DUCKS_CLASSES): $(_HEADFIRST_ADAPTER_DUCKS_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_ADAPTER_DUCKS_SOURCES)

_HEADFIRST_PROXY_GUMBALL_CLASSES =  \
	classes/headfirst/proxy/gumball/GumballMachineRemote.class \
	classes/headfirst/proxy/gumball/HasQuarterState.class \
	classes/headfirst/proxy/gumball/SoldState.class \
	classes/headfirst/proxy/gumball/GumballMachine.class \
	classes/headfirst/proxy/gumball/GumballMachineTestDrive.class \
	classes/headfirst/proxy/gumball/SoldOutState.class \
	classes/headfirst/proxy/gumball/State.class \
	classes/headfirst/proxy/gumball/GumballMonitor.class \
	classes/headfirst/proxy/gumball/GumballMonitorTestDrive.class \
	classes/headfirst/proxy/gumball/NoQuarterState.class \
	classes/headfirst/proxy/gumball/WinnerState.class
_HEADFIRST_PROXY_GUMBALL_SOURCES =  \
	src/headfirst/proxy/gumball/SoldState.java \
	src/headfirst/proxy/gumball/GumballMonitor.java \
	src/headfirst/proxy/gumball/HasQuarterState.java \
	src/headfirst/proxy/gumball/WinnerState.java \
	src/headfirst/proxy/gumball/GumballMonitorTestDrive.java \
	src/headfirst/proxy/gumball/NoQuarterState.java \
	src/headfirst/proxy/gumball/GumballMachineTestDrive.java \
	src/headfirst/proxy/gumball/State.java \
	src/headfirst/proxy/gumball/GumballMachineRemote.java \
	src/headfirst/proxy/gumball/SoldOutState.java \
	src/headfirst/proxy/gumball/GumballMachine.java
$(_HEADFIRST_PROXY_GUMBALL_CLASSES): $(_HEADFIRST_PROXY_GUMBALL_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_PROXY_GUMBALL_SOURCES)

_HEADFIRST_COMMAND_PARTY_CLASSES =  \
	classes/headfirst/command/party/StereoOnCommand.class \
	classes/headfirst/command/party/Stereo.class \
	classes/headfirst/command/party/Command.class \
	classes/headfirst/command/party/LightOnCommand.class \
	classes/headfirst/command/party/Hottub.class \
	classes/headfirst/command/party/NoCommand.class \
	classes/headfirst/command/party/HottubOffCommand.class \
	classes/headfirst/command/party/CeilingFanHighCommand.class \
	classes/headfirst/command/party/RemoteLoader.class \
	classes/headfirst/command/party/HottubOnCommand.class \
	classes/headfirst/command/party/Light.class \
	classes/headfirst/command/party/LightOffCommand.class \
	classes/headfirst/command/party/TVOffCommand.class \
	classes/headfirst/command/party/MacroCommand.class \
	classes/headfirst/command/party/TV.class \
	classes/headfirst/command/party/StereoOffCommand.class \
	classes/headfirst/command/party/CeilingFanOffCommand.class \
	classes/headfirst/command/party/CeilingFan.class \
	classes/headfirst/command/party/LivingroomLightOffCommand.class \
	classes/headfirst/command/party/LivingroomLightOnCommand.class \
	classes/headfirst/command/party/RemoteControl.class \
	classes/headfirst/command/party/TVOnCommand.class \
	classes/headfirst/command/party/StereoOnWithCDCommand.class \
	classes/headfirst/command/party/CeilingFanMediumCommand.class
_HEADFIRST_COMMAND_PARTY_SOURCES =  \
	src/headfirst/command/party/NoCommand.java \
	src/headfirst/command/party/CeilingFanMediumCommand.java \
	src/headfirst/command/party/LightOnCommand.java \
	src/headfirst/command/party/StereoOffCommand.java \
	src/headfirst/command/party/Command.java \
	src/headfirst/command/party/RemoteControl.java \
	src/headfirst/command/party/LivingroomLightOffCommand.java \
	src/headfirst/command/party/Stereo.java \
	src/headfirst/command/party/LightOffCommand.java \
	src/headfirst/command/party/CeilingFan.java \
	src/headfirst/command/party/TV.java \
	src/headfirst/command/party/Light.java \
	src/headfirst/command/party/HottubOffCommand.java \
	src/headfirst/command/party/Hottub.java \
	src/headfirst/command/party/HottubOnCommand.java \
	src/headfirst/command/party/TVOnCommand.java \
	src/headfirst/command/party/StereoOnWithCDCommand.java \
	src/headfirst/command/party/TVOffCommand.java \
	src/headfirst/command/party/CeilingFanOffCommand.java \
	src/headfirst/command/party/CeilingFanHighCommand.java \
	src/headfirst/command/party/LivingroomLightOnCommand.java \
	src/headfirst/command/party/StereoOnCommand.java \
	src/headfirst/command/party/RemoteLoader.java \
	src/headfirst/command/party/MacroCommand.java
$(_HEADFIRST_COMMAND_PARTY_CLASSES): $(_HEADFIRST_COMMAND_PARTY_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMMAND_PARTY_SOURCES)

_HEADFIRST_OBSERVER_SWING_CLASSES =  \
	classes/headfirst/observer/swing/SwingObserverExample.class
_HEADFIRST_OBSERVER_SWING_SOURCES =  \
	src/headfirst/observer/swing/SwingObserverExample.java
$(_HEADFIRST_OBSERVER_SWING_CLASSES): $(_HEADFIRST_OBSERVER_SWING_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_OBSERVER_SWING_SOURCES)

_HEADFIRST_COMBINING_ADAPTER_CLASSES =  \
	classes/headfirst/combining/adapter/GooseAdapter.class \
	classes/headfirst/combining/adapter/DuckCall.class \
	classes/headfirst/combining/adapter/MallardDuck.class \
	classes/headfirst/combining/adapter/RedheadDuck.class \
	classes/headfirst/combining/adapter/DecoyDuck.class \
	classes/headfirst/combining/adapter/Quackable.class \
	classes/headfirst/combining/adapter/Goose.class \
	classes/headfirst/combining/adapter/DuckSimulator.class \
	classes/headfirst/combining/adapter/RubberDuck.class
_HEADFIRST_COMBINING_ADAPTER_SOURCES =  \
	src/headfirst/combining/adapter/DecoyDuck.java \
	src/headfirst/combining/adapter/DuckSimulator.java \
	src/headfirst/combining/adapter/RedheadDuck.java \
	src/headfirst/combining/adapter/Quackable.java \
	src/headfirst/combining/adapter/Goose.java \
	src/headfirst/combining/adapter/GooseAdapter.java \
	src/headfirst/combining/adapter/RubberDuck.java \
	src/headfirst/combining/adapter/MallardDuck.java \
	src/headfirst/combining/adapter/DuckCall.java
$(_HEADFIRST_COMBINING_ADAPTER_CLASSES): $(_HEADFIRST_COMBINING_ADAPTER_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMBINING_ADAPTER_SOURCES)

_HEADFIRST_FACTORY_PIZZAFM_CLASSES =  \
	classes/headfirst/factory/pizzafm/PizzaTestDrive.class \
	classes/headfirst/factory/pizzafm/PizzaStore.class \
	classes/headfirst/factory/pizzafm/ChicagoStyleVeggiePizza.class \
	classes/headfirst/factory/pizzafm/NYStyleClamPizza.class \
	classes/headfirst/factory/pizzafm/DependentPizzaStore.class \
	classes/headfirst/factory/pizzafm/Pizza.class \
	classes/headfirst/factory/pizzafm/ChicagoStyleCheesePizza.class \
	classes/headfirst/factory/pizzafm/NYStylePepperoniPizza.class \
	classes/headfirst/factory/pizzafm/NYStyleVeggiePizza.class \
	classes/headfirst/factory/pizzafm/ChicagoPizzaStore.class \
	classes/headfirst/factory/pizzafm/NYStyleCheesePizza.class \
	classes/headfirst/factory/pizzafm/ChicagoStyleClamPizza.class \
	classes/headfirst/factory/pizzafm/ChicagoStylePepperoniPizza.class \
	classes/headfirst/factory/pizzafm/NYPizzaStore.class
_HEADFIRST_FACTORY_PIZZAFM_SOURCES =  \
	src/headfirst/factory/pizzafm/PizzaStore.java \
	src/headfirst/factory/pizzafm/NYStyleVeggiePizza.java \
	src/headfirst/factory/pizzafm/NYStyleClamPizza.java \
	src/headfirst/factory/pizzafm/NYStyleCheesePizza.java \
	src/headfirst/factory/pizzafm/NYPizzaStore.java \
	src/headfirst/factory/pizzafm/ChicagoStylePepperoniPizza.java \
	src/headfirst/factory/pizzafm/ChicagoStyleClamPizza.java \
	src/headfirst/factory/pizzafm/PizzaTestDrive.java \
	src/headfirst/factory/pizzafm/Pizza.java \
	src/headfirst/factory/pizzafm/ChicagoStyleCheesePizza.java \
	src/headfirst/factory/pizzafm/ChicagoStyleVeggiePizza.java \
	src/headfirst/factory/pizzafm/DependentPizzaStore.java \
	src/headfirst/factory/pizzafm/NYStylePepperoniPizza.java \
	src/headfirst/factory/pizzafm/ChicagoPizzaStore.java
$(_HEADFIRST_FACTORY_PIZZAFM_CLASSES): $(_HEADFIRST_FACTORY_PIZZAFM_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_FACTORY_PIZZAFM_SOURCES)

_HEADFIRST_TEMPLATEMETHOD_SIMPLEBARISTA_CLASSES =  \
	classes/headfirst/templatemethod/simplebarista/Tea.class \
	classes/headfirst/templatemethod/simplebarista/Coffee.class \
	classes/headfirst/templatemethod/simplebarista/Barista.class
_HEADFIRST_TEMPLATEMETHOD_SIMPLEBARISTA_SOURCES =  \
	src/headfirst/templatemethod/simplebarista/Coffee.java \
	src/headfirst/templatemethod/simplebarista/Tea.java \
	src/headfirst/templatemethod/simplebarista/Barista.java
$(_HEADFIRST_TEMPLATEMETHOD_SIMPLEBARISTA_CLASSES): $(_HEADFIRST_TEMPLATEMETHOD_SIMPLEBARISTA_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_TEMPLATEMETHOD_SIMPLEBARISTA_SOURCES)

_HEADFIRST_ITERATOR_DINERMERGERI_CLASSES =  \
	classes/headfirst/iterator/dinermergeri/MenuItem.class \
	classes/headfirst/iterator/dinermergeri/AlternatingDinerMenuIterator.class \
	classes/headfirst/iterator/dinermergeri/PancakeHouseMenu.class \
	classes/headfirst/iterator/dinermergeri/Waitress.class \
	classes/headfirst/iterator/dinermergeri/DinerMenu.class \
	classes/headfirst/iterator/dinermergeri/Menu.class \
	classes/headfirst/iterator/dinermergeri/MenuTestDrive.class \
	classes/headfirst/iterator/dinermergeri/DinerMenuIterator.class
_HEADFIRST_ITERATOR_DINERMERGERI_SOURCES =  \
	src/headfirst/iterator/dinermergeri/MenuTestDrive.java \
	src/headfirst/iterator/dinermergeri/Menu.java \
	src/headfirst/iterator/dinermergeri/MenuItem.java \
	src/headfirst/iterator/dinermergeri/Waitress.java \
	src/headfirst/iterator/dinermergeri/PancakeHouseMenu.java \
	src/headfirst/iterator/dinermergeri/DinerMenuIterator.java \
	src/headfirst/iterator/dinermergeri/DinerMenu.java \
	src/headfirst/iterator/dinermergeri/AlternatingDinerMenuIterator.java
$(_HEADFIRST_ITERATOR_DINERMERGERI_CLASSES): $(_HEADFIRST_ITERATOR_DINERMERGERI_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_ITERATOR_DINERMERGERI_SOURCES)

_HEADFIRST_FACADE_HOMETHEATER_CLASSES =  \
	classes/headfirst/facade/hometheater/HomeTheaterTestDrive.class \
	classes/headfirst/facade/hometheater/CdPlayer.class \
	classes/headfirst/facade/hometheater/PopcornPopper.class \
	classes/headfirst/facade/hometheater/Projector.class \
	classes/headfirst/facade/hometheater/Tuner.class \
	classes/headfirst/facade/hometheater/Amplifier.class \
	classes/headfirst/facade/hometheater/Screen.class \
	classes/headfirst/facade/hometheater/HomeTheaterFacade.class \
	classes/headfirst/facade/hometheater/TheaterLights.class \
	classes/headfirst/facade/hometheater/DvdPlayer.class
_HEADFIRST_FACADE_HOMETHEATER_SOURCES =  \
	src/headfirst/facade/hometheater/Screen.java \
	src/headfirst/facade/hometheater/Tuner.java \
	src/headfirst/facade/hometheater/Amplifier.java \
	src/headfirst/facade/hometheater/PopcornPopper.java \
	src/headfirst/facade/hometheater/Projector.java \
	src/headfirst/facade/hometheater/HomeTheaterFacade.java \
	src/headfirst/facade/hometheater/TheaterLights.java \
	src/headfirst/facade/hometheater/HomeTheaterTestDrive.java \
	src/headfirst/facade/hometheater/DvdPlayer.java \
	src/headfirst/facade/hometheater/CdPlayer.java
$(_HEADFIRST_FACADE_HOMETHEATER_CLASSES): $(_HEADFIRST_FACADE_HOMETHEATER_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_FACADE_HOMETHEATER_SOURCES)

_HEADFIRST_COMBINING_OBSERVER_CLASSES =  \
	classes/headfirst/combining/observer/RubberDuck.class \
	classes/headfirst/combining/observer/RedheadDuck.class \
	classes/headfirst/combining/observer/DuckFactory.class \
	classes/headfirst/combining/observer/Observer.class \
	classes/headfirst/combining/observer/CountingDuckFactory.class \
	classes/headfirst/combining/observer/GooseAdapter.class \
	classes/headfirst/combining/observer/Goose.class \
	classes/headfirst/combining/observer/Quackologist.class \
	classes/headfirst/combining/observer/Quackable.class \
	classes/headfirst/combining/observer/DuckCall.class \
	classes/headfirst/combining/observer/Observable.class \
	classes/headfirst/combining/observer/Flock.class \
	classes/headfirst/combining/observer/QuackObservable.class \
	classes/headfirst/combining/observer/AbstractDuckFactory.class \
	classes/headfirst/combining/observer/DuckSimulator.class \
	classes/headfirst/combining/observer/MallardDuck.class \
	classes/headfirst/combining/observer/QuackCounter.class \
	classes/headfirst/combining/observer/DecoyDuck.class
_HEADFIRST_COMBINING_OBSERVER_SOURCES =  \
	src/headfirst/combining/observer/DuckCall.java \
	src/headfirst/combining/observer/QuackCounter.java \
	src/headfirst/combining/observer/DecoyDuck.java \
	src/headfirst/combining/observer/Quackologist.java \
	src/headfirst/combining/observer/AbstractDuckFactory.java \
	src/headfirst/combining/observer/MallardDuck.java \
	src/headfirst/combining/observer/CountingDuckFactory.java \
	src/headfirst/combining/observer/RubberDuck.java \
	src/headfirst/combining/observer/Quackable.java \
	src/headfirst/combining/observer/QuackObservable.java \
	src/headfirst/combining/observer/Observable.java \
	src/headfirst/combining/observer/Flock.java \
	src/headfirst/combining/observer/Goose.java \
	src/headfirst/combining/observer/Observer.java \
	src/headfirst/combining/observer/DuckSimulator.java \
	src/headfirst/combining/observer/GooseAdapter.java \
	src/headfirst/combining/observer/RedheadDuck.java \
	src/headfirst/combining/observer/DuckFactory.java
$(_HEADFIRST_COMBINING_OBSERVER_CLASSES): $(_HEADFIRST_COMBINING_OBSERVER_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMBINING_OBSERVER_SOURCES)

_HEADFIRST_STATE_GUMBALLSTATE_CLASSES =  \
	classes/headfirst/state/gumballstate/SoldState.class \
	classes/headfirst/state/gumballstate/GumballMachineTestDrive.class \
	classes/headfirst/state/gumballstate/SoldOutState.class \
	classes/headfirst/state/gumballstate/GumballMachine.class \
	classes/headfirst/state/gumballstate/State.class \
	classes/headfirst/state/gumballstate/HasQuarterState.class \
	classes/headfirst/state/gumballstate/NoQuarterState.class
_HEADFIRST_STATE_GUMBALLSTATE_SOURCES =  \
	src/headfirst/state/gumballstate/NoQuarterState.java \
	src/headfirst/state/gumballstate/GumballMachineTestDrive.java \
	src/headfirst/state/gumballstate/SoldOutState.java \
	src/headfirst/state/gumballstate/GumballMachine.java \
	src/headfirst/state/gumballstate/HasQuarterState.java \
	src/headfirst/state/gumballstate/State.java \
	src/headfirst/state/gumballstate/SoldState.java
$(_HEADFIRST_STATE_GUMBALLSTATE_CLASSES): $(_HEADFIRST_STATE_GUMBALLSTATE_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_STATE_GUMBALLSTATE_SOURCES)

_HEADFIRST_ITERATOR_DINERMERGERCAFE_CLASSES =  \
	classes/headfirst/iterator/dinermergercafe/DinerMenuIterator.class \
	classes/headfirst/iterator/dinermergercafe/Menu.class \
	classes/headfirst/iterator/dinermergercafe/Waitress.class \
	classes/headfirst/iterator/dinermergercafe/MenuItem.class \
	classes/headfirst/iterator/dinermergercafe/CafeMenu.class \
	classes/headfirst/iterator/dinermergercafe/DinerMenu.class \
	classes/headfirst/iterator/dinermergercafe/MenuTestDrive.class \
	classes/headfirst/iterator/dinermergercafe/PancakeHouseMenu.class \
	classes/headfirst/iterator/dinermergercafe/AlternatingDinerMenuIterator.class
_HEADFIRST_ITERATOR_DINERMERGERCAFE_SOURCES =  \
	src/headfirst/iterator/dinermergercafe/MenuItem.java \
	src/headfirst/iterator/dinermergercafe/AlternatingDinerMenuIterator.java \
	src/headfirst/iterator/dinermergercafe/PancakeHouseMenu.java \
	src/headfirst/iterator/dinermergercafe/CafeMenu.java \
	src/headfirst/iterator/dinermergercafe/MenuTestDrive.java \
	src/headfirst/iterator/dinermergercafe/Menu.java \
	src/headfirst/iterator/dinermergercafe/DinerMenuIterator.java \
	src/headfirst/iterator/dinermergercafe/Waitress.java \
	src/headfirst/iterator/dinermergercafe/DinerMenu.java
$(_HEADFIRST_ITERATOR_DINERMERGERCAFE_CLASSES): $(_HEADFIRST_ITERATOR_DINERMERGERCAFE_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_ITERATOR_DINERMERGERCAFE_SOURCES)

_HEADFIRST_COMBINING_DECORATOR_CLASSES =  \
	classes/headfirst/combining/decorator/DuckSimulator.class \
	classes/headfirst/combining/decorator/RedheadDuck.class \
	classes/headfirst/combining/decorator/QuackCounter.class \
	classes/headfirst/combining/decorator/DecoyDuck.class \
	classes/headfirst/combining/decorator/MallardDuck.class \
	classes/headfirst/combining/decorator/RubberDuck.class \
	classes/headfirst/combining/decorator/DuckCall.class \
	classes/headfirst/combining/decorator/Goose.class \
	classes/headfirst/combining/decorator/GooseAdapter.class \
	classes/headfirst/combining/decorator/Quackable.class
_HEADFIRST_COMBINING_DECORATOR_SOURCES =  \
	src/headfirst/combining/decorator/MallardDuck.java \
	src/headfirst/combining/decorator/DuckCall.java \
	src/headfirst/combining/decorator/RubberDuck.java \
	src/headfirst/combining/decorator/QuackCounter.java \
	src/headfirst/combining/decorator/GooseAdapter.java \
	src/headfirst/combining/decorator/DuckSimulator.java \
	src/headfirst/combining/decorator/DecoyDuck.java \
	src/headfirst/combining/decorator/RedheadDuck.java \
	src/headfirst/combining/decorator/Goose.java \
	src/headfirst/combining/decorator/Quackable.java
$(_HEADFIRST_COMBINING_DECORATOR_CLASSES): $(_HEADFIRST_COMBINING_DECORATOR_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMBINING_DECORATOR_SOURCES)

_HEADFIRST_TEMPLATEMETHOD_FRAME_CLASSES =  \
	classes/headfirst/templatemethod/frame/MyFrame.class
_HEADFIRST_TEMPLATEMETHOD_FRAME_SOURCES =  \
	src/headfirst/templatemethod/frame/MyFrame.java
$(_HEADFIRST_TEMPLATEMETHOD_FRAME_CLASSES): $(_HEADFIRST_TEMPLATEMETHOD_FRAME_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_TEMPLATEMETHOD_FRAME_SOURCES)

_HEADFIRST_OBSERVER_WEATHEROBSERVABLE_CLASSES =  \
	classes/headfirst/observer/weatherobservable/WeatherStation.class \
	classes/headfirst/observer/weatherobservable/StatisticsDisplay.class \
	classes/headfirst/observer/weatherobservable/DisplayElement.class \
	classes/headfirst/observer/weatherobservable/HeatIndexDisplay.class \
	classes/headfirst/observer/weatherobservable/WeatherStationHeatIndex.class \
	classes/headfirst/observer/weatherobservable/ForecastDisplay.class \
	classes/headfirst/observer/weatherobservable/CurrentConditionsDisplay.class \
	classes/headfirst/observer/weatherobservable/WeatherData.class
_HEADFIRST_OBSERVER_WEATHEROBSERVABLE_SOURCES =  \
	src/headfirst/observer/weatherobservable/StatisticsDisplay.java \
	src/headfirst/observer/weatherobservable/WeatherStation.java \
	src/headfirst/observer/weatherobservable/HeatIndexDisplay.java \
	src/headfirst/observer/weatherobservable/DisplayElement.java \
	src/headfirst/observer/weatherobservable/CurrentConditionsDisplay.java \
	src/headfirst/observer/weatherobservable/ForecastDisplay.java \
	src/headfirst/observer/weatherobservable/WeatherData.java \
	src/headfirst/observer/weatherobservable/WeatherStationHeatIndex.java
$(_HEADFIRST_OBSERVER_WEATHEROBSERVABLE_CLASSES): $(_HEADFIRST_OBSERVER_WEATHEROBSERVABLE_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_OBSERVER_WEATHEROBSERVABLE_SOURCES)

_HEADFIRST_DECORATOR_STARBUZZ_CLASSES =  \
	classes/headfirst/decorator/starbuzz/HouseBlend.class \
	classes/headfirst/decorator/starbuzz/Espresso.class \
	classes/headfirst/decorator/starbuzz/CondimentDecorator.class \
	classes/headfirst/decorator/starbuzz/Soy.class \
	classes/headfirst/decorator/starbuzz/DarkRoast.class \
	classes/headfirst/decorator/starbuzz/Milk.class \
	classes/headfirst/decorator/starbuzz/Whip.class \
	classes/headfirst/decorator/starbuzz/StarbuzzCoffee.class \
	classes/headfirst/decorator/starbuzz/Beverage.class \
	classes/headfirst/decorator/starbuzz/Decaf.class \
	classes/headfirst/decorator/starbuzz/Mocha.class
_HEADFIRST_DECORATOR_STARBUZZ_SOURCES =  \
	src/headfirst/decorator/starbuzz/Espresso.java \
	src/headfirst/decorator/starbuzz/Mocha.java \
	src/headfirst/decorator/starbuzz/Beverage.java \
	src/headfirst/decorator/starbuzz/Decaf.java \
	src/headfirst/decorator/starbuzz/Soy.java \
	src/headfirst/decorator/starbuzz/HouseBlend.java \
	src/headfirst/decorator/starbuzz/DarkRoast.java \
	src/headfirst/decorator/starbuzz/CondimentDecorator.java \
	src/headfirst/decorator/starbuzz/Whip.java \
	src/headfirst/decorator/starbuzz/StarbuzzCoffee.java \
	src/headfirst/decorator/starbuzz/Milk.java
$(_HEADFIRST_DECORATOR_STARBUZZ_CLASSES): $(_HEADFIRST_DECORATOR_STARBUZZ_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_DECORATOR_STARBUZZ_SOURCES)

_HEADFIRST_COMPOSITE_MENU_CLASSES =  \
	classes/headfirst/composite/menu/MenuComponent.class \
	classes/headfirst/composite/menu/MenuTestDrive.class \
	classes/headfirst/composite/menu/MenuItem.class \
	classes/headfirst/composite/menu/Waitress.class \
	classes/headfirst/composite/menu/Menu.class
_HEADFIRST_COMPOSITE_MENU_SOURCES =  \
	src/headfirst/composite/menu/MenuItem.java \
	src/headfirst/composite/menu/MenuComponent.java \
	src/headfirst/composite/menu/Menu.java \
	src/headfirst/composite/menu/MenuTestDrive.java \
	src/headfirst/composite/menu/Waitress.java
$(_HEADFIRST_COMPOSITE_MENU_CLASSES): $(_HEADFIRST_COMPOSITE_MENU_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMPOSITE_MENU_SOURCES)

_HEADFIRST_DECORATOR_IO_CLASSES =  \
	classes/headfirst/decorator/io/LowerCaseInputStream.class \
	classes/headfirst/decorator/io/InputTest.class
_HEADFIRST_DECORATOR_IO_SOURCES =  \
	src/headfirst/decorator/io/LowerCaseInputStream.java \
	src/headfirst/decorator/io/InputTest.java
$(_HEADFIRST_DECORATOR_IO_CLASSES): $(_HEADFIRST_DECORATOR_IO_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_DECORATOR_IO_SOURCES)

_HEADFIRST_OBSERVER_WEATHER_CLASSES =  \
	classes/headfirst/observer/weather/CurrentConditionsDisplay.class \
	classes/headfirst/observer/weather/DisplayElement.class \
	classes/headfirst/observer/weather/WeatherStationHeatIndex.class \
	classes/headfirst/observer/weather/WeatherStation.class \
	classes/headfirst/observer/weather/HeatIndexDisplay.class \
	classes/headfirst/observer/weather/Subject.class \
	classes/headfirst/observer/weather/ForecastDisplay.class \
	classes/headfirst/observer/weather/Observer.class \
	classes/headfirst/observer/weather/WeatherData.class \
	classes/headfirst/observer/weather/StatisticsDisplay.class
_HEADFIRST_OBSERVER_WEATHER_SOURCES =  \
	src/headfirst/observer/weather/WeatherStationHeatIndex.java \
	src/headfirst/observer/weather/CurrentConditionsDisplay.java \
	src/headfirst/observer/weather/WeatherData.java \
	src/headfirst/observer/weather/Subject.java \
	src/headfirst/observer/weather/StatisticsDisplay.java \
	src/headfirst/observer/weather/ForecastDisplay.java \
	src/headfirst/observer/weather/DisplayElement.java \
	src/headfirst/observer/weather/HeatIndexDisplay.java \
	src/headfirst/observer/weather/WeatherStation.java \
	src/headfirst/observer/weather/Observer.java
$(_HEADFIRST_OBSERVER_WEATHER_CLASSES): $(_HEADFIRST_OBSERVER_WEATHER_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_OBSERVER_WEATHER_SOURCES)

_HEADFIRST_TEMPLATEMETHOD_APPLET_CLASSES =  \
	classes/headfirst/templatemethod/applet/MyApplet.class
_HEADFIRST_TEMPLATEMETHOD_APPLET_SOURCES =  \
	src/headfirst/templatemethod/applet/MyApplet.java
$(_HEADFIRST_TEMPLATEMETHOD_APPLET_CLASSES): $(_HEADFIRST_TEMPLATEMETHOD_APPLET_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_TEMPLATEMETHOD_APPLET_SOURCES)

_HEADFIRST_FACTORY_PIZZAAF_CLASSES =  \
	classes/headfirst/factory/pizzaaf/Veggies.class \
	classes/headfirst/factory/pizzaaf/ReggianoCheese.class \
	classes/headfirst/factory/pizzaaf/PizzaStore.class \
	classes/headfirst/factory/pizzaaf/FreshClams.class \
	classes/headfirst/factory/pizzaaf/Spinach.class \
	classes/headfirst/factory/pizzaaf/NYPizzaStore.class \
	classes/headfirst/factory/pizzaaf/MozzarellaCheese.class \
	classes/headfirst/factory/pizzaaf/Pepperoni.class \
	classes/headfirst/factory/pizzaaf/NYPizzaIngredientFactory.class \
	classes/headfirst/factory/pizzaaf/ThinCrustDough.class \
	classes/headfirst/factory/pizzaaf/PizzaIngredientFactory.class \
	classes/headfirst/factory/pizzaaf/BlackOlives.class \
	classes/headfirst/factory/pizzaaf/PlumTomatoSauce.class \
	classes/headfirst/factory/pizzaaf/Clams.class \
	classes/headfirst/factory/pizzaaf/CheesePizza.class \
	classes/headfirst/factory/pizzaaf/ChicagoPizzaIngredientFactory.class \
	classes/headfirst/factory/pizzaaf/FrozenClams.class \
	classes/headfirst/factory/pizzaaf/Garlic.class \
	classes/headfirst/factory/pizzaaf/ClamPizza.class \
	classes/headfirst/factory/pizzaaf/ParmesanCheese.class \
	classes/headfirst/factory/pizzaaf/SlicedPepperoni.class \
	classes/headfirst/factory/pizzaaf/Dough.class \
	classes/headfirst/factory/pizzaaf/Cheese.class \
	classes/headfirst/factory/pizzaaf/Eggplant.class \
	classes/headfirst/factory/pizzaaf/Mushroom.class \
	classes/headfirst/factory/pizzaaf/Pizza.class \
	classes/headfirst/factory/pizzaaf/ThickCrustDough.class \
	classes/headfirst/factory/pizzaaf/Sauce.class \
	classes/headfirst/factory/pizzaaf/ChicagoPizzaStore.class \
	classes/headfirst/factory/pizzaaf/Onion.class \
	classes/headfirst/factory/pizzaaf/PizzaTestDrive.class \
	classes/headfirst/factory/pizzaaf/MarinaraSauce.class \
	classes/headfirst/factory/pizzaaf/PepperoniPizza.class \
	classes/headfirst/factory/pizzaaf/VeggiePizza.class \
	classes/headfirst/factory/pizzaaf/RedPepper.class
_HEADFIRST_FACTORY_PIZZAAF_SOURCES =  \
	src/headfirst/factory/pizzaaf/Cheese.java \
	src/headfirst/factory/pizzaaf/RedPepper.java \
	src/headfirst/factory/pizzaaf/ChicagoPizzaStore.java \
	src/headfirst/factory/pizzaaf/Spinach.java \
	src/headfirst/factory/pizzaaf/ReggianoCheese.java \
	src/headfirst/factory/pizzaaf/SlicedPepperoni.java \
	src/headfirst/factory/pizzaaf/ClamPizza.java \
	src/headfirst/factory/pizzaaf/FreshClams.java \
	src/headfirst/factory/pizzaaf/Eggplant.java \
	src/headfirst/factory/pizzaaf/MozzarellaCheese.java \
	src/headfirst/factory/pizzaaf/PlumTomatoSauce.java \
	src/headfirst/factory/pizzaaf/ThinCrustDough.java \
	src/headfirst/factory/pizzaaf/Pepperoni.java \
	src/headfirst/factory/pizzaaf/Pizza.java \
	src/headfirst/factory/pizzaaf/Onion.java \
	src/headfirst/factory/pizzaaf/ParmesanCheese.java \
	src/headfirst/factory/pizzaaf/FrozenClams.java \
	src/headfirst/factory/pizzaaf/ChicagoPizzaIngredientFactory.java \
	src/headfirst/factory/pizzaaf/Dough.java \
	src/headfirst/factory/pizzaaf/ThickCrustDough.java \
	src/headfirst/factory/pizzaaf/Sauce.java \
	src/headfirst/factory/pizzaaf/PepperoniPizza.java \
	src/headfirst/factory/pizzaaf/PizzaStore.java \
	src/headfirst/factory/pizzaaf/Garlic.java \
	src/headfirst/factory/pizzaaf/Clams.java \
	src/headfirst/factory/pizzaaf/Veggies.java \
	src/headfirst/factory/pizzaaf/MarinaraSauce.java \
	src/headfirst/factory/pizzaaf/NYPizzaStore.java \
	src/headfirst/factory/pizzaaf/CheesePizza.java \
	src/headfirst/factory/pizzaaf/NYPizzaIngredientFactory.java \
	src/headfirst/factory/pizzaaf/PizzaIngredientFactory.java \
	src/headfirst/factory/pizzaaf/BlackOlives.java \
	src/headfirst/factory/pizzaaf/PizzaTestDrive.java \
	src/headfirst/factory/pizzaaf/VeggiePizza.java \
	src/headfirst/factory/pizzaaf/Mushroom.java
$(_HEADFIRST_FACTORY_PIZZAAF_CLASSES): $(_HEADFIRST_FACTORY_PIZZAAF_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_FACTORY_PIZZAAF_SOURCES)

_HEADFIRST_COMBINED_DJVIEW_CLASSES =  \
	classes/headfirst/combined/djview/BPMObserver.class \
	classes/headfirst/combined/djview/BeatModelInterface.class \
	classes/headfirst/combined/djview/BeatModel.class \
	classes/headfirst/combined/djview/DJTestDrive.class \
	classes/headfirst/combined/djview/HeartController.class \
	classes/headfirst/combined/djview/HeartAdapter.class \
	classes/headfirst/combined/djview/BeatObserver.class \
	classes/headfirst/combined/djview/HeartModelInterface.class \
	classes/headfirst/combined/djview/ControllerInterface.class \
	classes/headfirst/combined/djview/DJView.class \
	classes/headfirst/combined/djview/HeartTestDrive.class \
	classes/headfirst/combined/djview/HeartModel.class \
	classes/headfirst/combined/djview/BeatController.class \
	classes/headfirst/combined/djview/BeatBar.class
_HEADFIRST_COMBINED_DJVIEW_SOURCES =  \
	src/headfirst/combined/djview/BeatModel.java \
	src/headfirst/combined/djview/HeartAdapter.java \
	src/headfirst/combined/djview/BeatBar.java \
	src/headfirst/combined/djview/HeartController.java \
	src/headfirst/combined/djview/HeartTestDrive.java \
	src/headfirst/combined/djview/HeartModel.java \
	src/headfirst/combined/djview/DJTestDrive.java \
	src/headfirst/combined/djview/HeartModelInterface.java \
	src/headfirst/combined/djview/DJView.java \
	src/headfirst/combined/djview/ControllerInterface.java \
	src/headfirst/combined/djview/BeatController.java \
	src/headfirst/combined/djview/BPMObserver.java \
	src/headfirst/combined/djview/BeatModelInterface.java \
	src/headfirst/combined/djview/BeatObserver.java
$(_HEADFIRST_COMBINED_DJVIEW_CLASSES): $(_HEADFIRST_COMBINED_DJVIEW_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMBINED_DJVIEW_SOURCES)

_HEADFIRST_TEMPLATEMETHOD_SORT_CLASSES =  \
	classes/headfirst/templatemethod/sort/DuckSortTestDrive.class \
	classes/headfirst/templatemethod/sort/Duck.class
_HEADFIRST_TEMPLATEMETHOD_SORT_SOURCES =  \
	src/headfirst/templatemethod/sort/DuckSortTestDrive.java \
	src/headfirst/templatemethod/sort/Duck.java
$(_HEADFIRST_TEMPLATEMETHOD_SORT_CLASSES): $(_HEADFIRST_TEMPLATEMETHOD_SORT_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_TEMPLATEMETHOD_SORT_SOURCES)

_HEADFIRST_SINGLETON_CHOCOLATE_CLASSES =  \
	classes/headfirst/singleton/chocolate/ChocolateController.class \
	classes/headfirst/singleton/chocolate/ChocolateBoiler.class
_HEADFIRST_SINGLETON_CHOCOLATE_SOURCES =  \
	src/headfirst/singleton/chocolate/ChocolateBoiler.java \
	src/headfirst/singleton/chocolate/ChocolateController.java
$(_HEADFIRST_SINGLETON_CHOCOLATE_CLASSES): $(_HEADFIRST_SINGLETON_CHOCOLATE_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_SINGLETON_CHOCOLATE_SOURCES)

_HEADFIRST_TEMPLATEMETHOD_BARISTA_CLASSES =  \
	classes/headfirst/templatemethod/barista/Tea.class \
	classes/headfirst/templatemethod/barista/CaffeineBeverageWithHook.class \
	classes/headfirst/templatemethod/barista/CoffeeWithHook.class \
	classes/headfirst/templatemethod/barista/TeaWithHook.class \
	classes/headfirst/templatemethod/barista/Coffee.class \
	classes/headfirst/templatemethod/barista/CaffeineBeverage.class \
	classes/headfirst/templatemethod/barista/BeverageTestDrive.class
_HEADFIRST_TEMPLATEMETHOD_BARISTA_SOURCES =  \
	src/headfirst/templatemethod/barista/Tea.java \
	src/headfirst/templatemethod/barista/TeaWithHook.java \
	src/headfirst/templatemethod/barista/Coffee.java \
	src/headfirst/templatemethod/barista/CaffeineBeverage.java \
	src/headfirst/templatemethod/barista/BeverageTestDrive.java \
	src/headfirst/templatemethod/barista/CoffeeWithHook.java \
	src/headfirst/templatemethod/barista/CaffeineBeverageWithHook.java
$(_HEADFIRST_TEMPLATEMETHOD_BARISTA_CLASSES): $(_HEADFIRST_TEMPLATEMETHOD_BARISTA_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_TEMPLATEMETHOD_BARISTA_SOURCES)

_HEADFIRST_STATE_GUMBALL_CLASSES =  \
	classes/headfirst/state/gumball/GumballMachine.class \
	classes/headfirst/state/gumball/GumballMachineTestDrive.class
_HEADFIRST_STATE_GUMBALL_SOURCES =  \
	src/headfirst/state/gumball/GumballMachineTestDrive.java \
	src/headfirst/state/gumball/GumballMachine.java
$(_HEADFIRST_STATE_GUMBALL_CLASSES): $(_HEADFIRST_STATE_GUMBALL_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_STATE_GUMBALL_SOURCES)

_HEADFIRST_FACTORY_PIZZAS_CLASSES =  \
	classes/headfirst/factory/pizzas/PizzaTestDrive.class \
	classes/headfirst/factory/pizzas/PepperoniPizza.class \
	classes/headfirst/factory/pizzas/PizzaStore.class \
	classes/headfirst/factory/pizzas/ClamPizza.class \
	classes/headfirst/factory/pizzas/VeggiePizza.class \
	classes/headfirst/factory/pizzas/SimplePizzaFactory.class \
	classes/headfirst/factory/pizzas/CheesePizza.class \
	classes/headfirst/factory/pizzas/Pizza.class
_HEADFIRST_FACTORY_PIZZAS_SOURCES =  \
	src/headfirst/factory/pizzas/PizzaTestDrive.java \
	src/headfirst/factory/pizzas/PizzaStore.java \
	src/headfirst/factory/pizzas/Pizza.java \
	src/headfirst/factory/pizzas/ClamPizza.java \
	src/headfirst/factory/pizzas/CheesePizza.java \
	src/headfirst/factory/pizzas/SimplePizzaFactory.java \
	src/headfirst/factory/pizzas/VeggiePizza.java \
	src/headfirst/factory/pizzas/PepperoniPizza.java
$(_HEADFIRST_FACTORY_PIZZAS_CLASSES): $(_HEADFIRST_FACTORY_PIZZAS_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_FACTORY_PIZZAS_SOURCES)

_HEADFIRST_COMMAND_REMOTE_CLASSES =  \
	classes/headfirst/command/remote/LivingroomLightOffCommand.class \
	classes/headfirst/command/remote/StereoOffCommand.class \
	classes/headfirst/command/remote/HottubOnCommand.class \
	classes/headfirst/command/remote/GarageDoorDownCommand.class \
	classes/headfirst/command/remote/RemoteLoader.class \
	classes/headfirst/command/remote/Hottub.class \
	classes/headfirst/command/remote/LivingroomLightOnCommand.class \
	classes/headfirst/command/remote/NoCommand.class \
	classes/headfirst/command/remote/TV.class \
	classes/headfirst/command/remote/GarageDoor.class \
	classes/headfirst/command/remote/Command.class \
	classes/headfirst/command/remote/HottubOffCommand.class \
	classes/headfirst/command/remote/Light.class \
	classes/headfirst/command/remote/CeilingFanOffCommand.class \
	classes/headfirst/command/remote/StereoOnWithCDCommand.class \
	classes/headfirst/command/remote/CeilingFan.class \
	classes/headfirst/command/remote/Stereo.class \
	classes/headfirst/command/remote/RemoteControl.class \
	classes/headfirst/command/remote/LightOnCommand.class \
	classes/headfirst/command/remote/LightOffCommand.class \
	classes/headfirst/command/remote/CeilingFanOnCommand.class \
	classes/headfirst/command/remote/GarageDoorUpCommand.class
_HEADFIRST_COMMAND_REMOTE_SOURCES =  \
	src/headfirst/command/remote/GarageDoorDownCommand.java \
	src/headfirst/command/remote/Stereo.java \
	src/headfirst/command/remote/LightOffCommand.java \
	src/headfirst/command/remote/GarageDoorUpCommand.java \
	src/headfirst/command/remote/CeilingFanOffCommand.java \
	src/headfirst/command/remote/RemoteLoader.java \
	src/headfirst/command/remote/TV.java \
	src/headfirst/command/remote/NoCommand.java \
	src/headfirst/command/remote/Command.java \
	src/headfirst/command/remote/LivingroomLightOffCommand.java \
	src/headfirst/command/remote/HottubOffCommand.java \
	src/headfirst/command/remote/Light.java \
	src/headfirst/command/remote/RemoteControl.java \
	src/headfirst/command/remote/HottubOnCommand.java \
	src/headfirst/command/remote/CeilingFanOnCommand.java \
	src/headfirst/command/remote/CeilingFan.java \
	src/headfirst/command/remote/LivingroomLightOnCommand.java \
	src/headfirst/command/remote/GarageDoor.java \
	src/headfirst/command/remote/StereoOnWithCDCommand.java \
	src/headfirst/command/remote/StereoOffCommand.java \
	src/headfirst/command/remote/Hottub.java \
	src/headfirst/command/remote/LightOnCommand.java
$(_HEADFIRST_COMMAND_REMOTE_CLASSES): $(_HEADFIRST_COMMAND_REMOTE_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMMAND_REMOTE_SOURCES)

_HEADFIRST_PROXY_VIRTUALPROXY_CLASSES =  \
	classes/headfirst/proxy/virtualproxy/ImageProxy.class \
	classes/headfirst/proxy/virtualproxy/ImageProxyTestDrive.class \
	classes/headfirst/proxy/virtualproxy/ImageComponent.class
_HEADFIRST_PROXY_VIRTUALPROXY_SOURCES =  \
	src/headfirst/proxy/virtualproxy/ImageComponent.java \
	src/headfirst/proxy/virtualproxy/ImageProxyTestDrive.java \
	src/headfirst/proxy/virtualproxy/ImageProxy.java
$(_HEADFIRST_PROXY_VIRTUALPROXY_CLASSES): $(_HEADFIRST_PROXY_VIRTUALPROXY_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_PROXY_VIRTUALPROXY_SOURCES)

_HEADFIRST_PROXY_GUMBALLMONITOR_CLASSES =  \
	classes/headfirst/proxy/gumballmonitor/SoldState.class \
	classes/headfirst/proxy/gumballmonitor/WinnerState.class \
	classes/headfirst/proxy/gumballmonitor/State.class \
	classes/headfirst/proxy/gumballmonitor/SoldOutState.class \
	classes/headfirst/proxy/gumballmonitor/GumballMachineTestDrive.class \
	classes/headfirst/proxy/gumballmonitor/GumballMachine.class \
	classes/headfirst/proxy/gumballmonitor/HasQuarterState.class \
	classes/headfirst/proxy/gumballmonitor/NoQuarterState.class \
	classes/headfirst/proxy/gumballmonitor/GumballMonitor.class
_HEADFIRST_PROXY_GUMBALLMONITOR_SOURCES =  \
	src/headfirst/proxy/gumballmonitor/GumballMonitor.java \
	src/headfirst/proxy/gumballmonitor/NoQuarterState.java \
	src/headfirst/proxy/gumballmonitor/State.java \
	src/headfirst/proxy/gumballmonitor/WinnerState.java \
	src/headfirst/proxy/gumballmonitor/GumballMachine.java \
	src/headfirst/proxy/gumballmonitor/HasQuarterState.java \
	src/headfirst/proxy/gumballmonitor/SoldOutState.java \
	src/headfirst/proxy/gumballmonitor/GumballMachineTestDrive.java \
	src/headfirst/proxy/gumballmonitor/SoldState.java
$(_HEADFIRST_PROXY_GUMBALLMONITOR_CLASSES): $(_HEADFIRST_PROXY_GUMBALLMONITOR_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_PROXY_GUMBALLMONITOR_SOURCES)

_HEADFIRST_ITERATOR_DINERMERGER_CLASSES =  \
	classes/headfirst/iterator/dinermerger/AlternatingDinerMenuIterator.class \
	classes/headfirst/iterator/dinermerger/ArrayListIterator.class \
	classes/headfirst/iterator/dinermerger/DinerMenu.class \
	classes/headfirst/iterator/dinermerger/Menu.class \
	classes/headfirst/iterator/dinermerger/Waitress.class \
	classes/headfirst/iterator/dinermerger/DinerMenuIterator.class \
	classes/headfirst/iterator/dinermerger/ArrayIterator.class \
	classes/headfirst/iterator/dinermerger/PancakeHouseMenu.class \
	classes/headfirst/iterator/dinermerger/PancakeHouseMenuIterator.class \
	classes/headfirst/iterator/dinermerger/MenuItem.class \
	classes/headfirst/iterator/dinermerger/Iterator.class \
	classes/headfirst/iterator/dinermerger/MenuTestDrive.class
_HEADFIRST_ITERATOR_DINERMERGER_SOURCES =  \
	src/headfirst/iterator/dinermerger/Waitress.java \
	src/headfirst/iterator/dinermerger/Menu.java \
	src/headfirst/iterator/dinermerger/DinerMenuIterator.java \
	src/headfirst/iterator/dinermerger/ArrayListIterator.java \
	src/headfirst/iterator/dinermerger/PancakeHouseMenu.java \
	src/headfirst/iterator/dinermerger/PancakeHouseMenuIterator.java \
	src/headfirst/iterator/dinermerger/ArrayIterator.java \
	src/headfirst/iterator/dinermerger/DinerMenu.java \
	src/headfirst/iterator/dinermerger/MenuItem.java \
	src/headfirst/iterator/dinermerger/Iterator.java \
	src/headfirst/iterator/dinermerger/MenuTestDrive.java \
	src/headfirst/iterator/dinermerger/AlternatingDinerMenuIterator.java
$(_HEADFIRST_ITERATOR_DINERMERGER_CLASSES): $(_HEADFIRST_ITERATOR_DINERMERGER_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_ITERATOR_DINERMERGER_SOURCES)

_HEADFIRST_SINGLETON_SUBCLASS_CLASSES =  \
	classes/headfirst/singleton/subclass/SingletonTestDrive.class \
	classes/headfirst/singleton/subclass/Singleton.class \
	classes/headfirst/singleton/subclass/CoolerSingleton.class \
	classes/headfirst/singleton/subclass/HotterSingleton.class
_HEADFIRST_SINGLETON_SUBCLASS_SOURCES =  \
	src/headfirst/singleton/subclass/Singleton.java \
	src/headfirst/singleton/subclass/SingletonTestDrive.java \
	src/headfirst/singleton/subclass/CoolerSingleton.java \
	src/headfirst/singleton/subclass/HotterSingleton.java
$(_HEADFIRST_SINGLETON_SUBCLASS_CLASSES): $(_HEADFIRST_SINGLETON_SUBCLASS_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_SINGLETON_SUBCLASS_SOURCES)

_HEADFIRST_STATE_GUMBALLSTATEWINNER_CLASSES =  \
	classes/headfirst/state/gumballstatewinner/GumballMachineTestDrive.class \
	classes/headfirst/state/gumballstatewinner/WinnerState.class \
	classes/headfirst/state/gumballstatewinner/State.class \
	classes/headfirst/state/gumballstatewinner/NoQuarterState.class \
	classes/headfirst/state/gumballstatewinner/SoldOutState.class \
	classes/headfirst/state/gumballstatewinner/HasQuarterState.class \
	classes/headfirst/state/gumballstatewinner/SoldState.class \
	classes/headfirst/state/gumballstatewinner/GumballMachine.class
_HEADFIRST_STATE_GUMBALLSTATEWINNER_SOURCES =  \
	src/headfirst/state/gumballstatewinner/State.java \
	src/headfirst/state/gumballstatewinner/HasQuarterState.java \
	src/headfirst/state/gumballstatewinner/GumballMachineTestDrive.java \
	src/headfirst/state/gumballstatewinner/SoldOutState.java \
	src/headfirst/state/gumballstatewinner/GumballMachine.java \
	src/headfirst/state/gumballstatewinner/WinnerState.java \
	src/headfirst/state/gumballstatewinner/NoQuarterState.java \
	src/headfirst/state/gumballstatewinner/SoldState.java
$(_HEADFIRST_STATE_GUMBALLSTATEWINNER_CLASSES): $(_HEADFIRST_STATE_GUMBALLSTATEWINNER_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_STATE_GUMBALLSTATEWINNER_SOURCES)

_HEADFIRST_ADAPTER_ITERENUM_CLASSES =  \
	classes/headfirst/adapter/iterenum/EnumerationIterator.class \
	classes/headfirst/adapter/iterenum/EI.class \
	classes/headfirst/adapter/iterenum/IteratorEnumeration.class \
	classes/headfirst/adapter/iterenum/IteratorEnumerationTestDrive.class \
	classes/headfirst/adapter/iterenum/EnumerationIteratorTestDrive.class
_HEADFIRST_ADAPTER_ITERENUM_SOURCES =  \
	src/headfirst/adapter/iterenum/EI.java \
	src/headfirst/adapter/iterenum/IteratorEnumerationTestDrive.java \
	src/headfirst/adapter/iterenum/IteratorEnumeration.java \
	src/headfirst/adapter/iterenum/EnumerationIterator.java \
	src/headfirst/adapter/iterenum/EnumerationIteratorTestDrive.java
$(_HEADFIRST_ADAPTER_ITERENUM_CLASSES): $(_HEADFIRST_ADAPTER_ITERENUM_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_ADAPTER_ITERENUM_SOURCES)

_HEADFIRST_COMMAND_SIMPLEREMOTE_CLASSES =  \
	classes/headfirst/command/simpleremote/Light.class \
	classes/headfirst/command/simpleremote/LightOffCommand.class \
	classes/headfirst/command/simpleremote/GarageDoor.class \
	classes/headfirst/command/simpleremote/RemoteControlTest.class \
	classes/headfirst/command/simpleremote/Command.class \
	classes/headfirst/command/simpleremote/GarageDoorOpenCommand.class \
	classes/headfirst/command/simpleremote/SimpleRemoteControl.class \
	classes/headfirst/command/simpleremote/LightOnCommand.class
_HEADFIRST_COMMAND_SIMPLEREMOTE_SOURCES =  \
	src/headfirst/command/simpleremote/SimpleRemoteControl.java \
	src/headfirst/command/simpleremote/Light.java \
	src/headfirst/command/simpleremote/LightOnCommand.java \
	src/headfirst/command/simpleremote/GarageDoor.java \
	src/headfirst/command/simpleremote/Command.java \
	src/headfirst/command/simpleremote/GarageDoorOpenCommand.java \
	src/headfirst/command/simpleremote/LightOffCommand.java \
	src/headfirst/command/simpleremote/RemoteControlTest.java
$(_HEADFIRST_COMMAND_SIMPLEREMOTE_CLASSES): $(_HEADFIRST_COMMAND_SIMPLEREMOTE_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMMAND_SIMPLEREMOTE_SOURCES)

_HEADFIRST_COMPOSITE_MENUITERATOR_CLASSES =  \
	classes/headfirst/composite/menuiterator/NullIterator.class \
	classes/headfirst/composite/menuiterator/MenuItem.class \
	classes/headfirst/composite/menuiterator/Waitress.class \
	classes/headfirst/composite/menuiterator/MenuComponent.class \
	classes/headfirst/composite/menuiterator/CompositeIterator.class \
	classes/headfirst/composite/menuiterator/Menu.class \
	classes/headfirst/composite/menuiterator/MenuTestDrive.class
_HEADFIRST_COMPOSITE_MENUITERATOR_SOURCES =  \
	src/headfirst/composite/menuiterator/MenuTestDrive.java \
	src/headfirst/composite/menuiterator/Menu.java \
	src/headfirst/composite/menuiterator/Waitress.java \
	src/headfirst/composite/menuiterator/NullIterator.java \
	src/headfirst/composite/menuiterator/CompositeIterator.java \
	src/headfirst/composite/menuiterator/MenuItem.java \
	src/headfirst/composite/menuiterator/MenuComponent.java
$(_HEADFIRST_COMPOSITE_MENUITERATOR_CLASSES): $(_HEADFIRST_COMPOSITE_MENUITERATOR_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMPOSITE_MENUITERATOR_SOURCES)

_HEADFIRST_COMBINING_FACTORY_CLASSES =  \
	classes/headfirst/combining/factory/DuckSimulator.class \
	classes/headfirst/combining/factory/DecoyDuck.class \
	classes/headfirst/combining/factory/Quackable.class \
	classes/headfirst/combining/factory/CountingDuckFactory.class \
	classes/headfirst/combining/factory/Goose.class \
	classes/headfirst/combining/factory/RedheadDuck.class \
	classes/headfirst/combining/factory/DuckFactory.class \
	classes/headfirst/combining/factory/AbstractDuckFactory.class \
	classes/headfirst/combining/factory/QuackCounter.class \
	classes/headfirst/combining/factory/GooseAdapter.class \
	classes/headfirst/combining/factory/RubberDuck.class \
	classes/headfirst/combining/factory/MallardDuck.class \
	classes/headfirst/combining/factory/DuckCall.class
_HEADFIRST_COMBINING_FACTORY_SOURCES =  \
	src/headfirst/combining/factory/DuckSimulator.java \
	src/headfirst/combining/factory/AbstractDuckFactory.java \
	src/headfirst/combining/factory/MallardDuck.java \
	src/headfirst/combining/factory/Goose.java \
	src/headfirst/combining/factory/DecoyDuck.java \
	src/headfirst/combining/factory/GooseAdapter.java \
	src/headfirst/combining/factory/QuackCounter.java \
	src/headfirst/combining/factory/DuckFactory.java \
	src/headfirst/combining/factory/RubberDuck.java \
	src/headfirst/combining/factory/Quackable.java \
	src/headfirst/combining/factory/DuckCall.java \
	src/headfirst/combining/factory/CountingDuckFactory.java \
	src/headfirst/combining/factory/RedheadDuck.java
$(_HEADFIRST_COMBINING_FACTORY_CLASSES): $(_HEADFIRST_COMBINING_FACTORY_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMBINING_FACTORY_SOURCES)

_HEADFIRST_COMBINING_DUCKS_CLASSES =  \
	classes/headfirst/combining/ducks/DecoyDuck.class \
	classes/headfirst/combining/ducks/Quackable.class \
	classes/headfirst/combining/ducks/DuckSimulator.class \
	classes/headfirst/combining/ducks/DuckCall.class \
	classes/headfirst/combining/ducks/MallardDuck.class \
	classes/headfirst/combining/ducks/RedheadDuck.class \
	classes/headfirst/combining/ducks/RubberDuck.class
_HEADFIRST_COMBINING_DUCKS_SOURCES =  \
	src/headfirst/combining/ducks/RubberDuck.java \
	src/headfirst/combining/ducks/Quackable.java \
	src/headfirst/combining/ducks/RedheadDuck.java \
	src/headfirst/combining/ducks/DuckSimulator.java \
	src/headfirst/combining/ducks/DuckCall.java \
	src/headfirst/combining/ducks/MallardDuck.java \
	src/headfirst/combining/ducks/DecoyDuck.java
$(_HEADFIRST_COMBINING_DUCKS_CLASSES): $(_HEADFIRST_COMBINING_DUCKS_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_COMBINING_DUCKS_SOURCES)

_HEADFIRST_ITERATOR_TRANSITION_CLASSES =  \
	classes/headfirst/iterator/transition/Waitress.class \
	classes/headfirst/iterator/transition/Menu.class \
	classes/headfirst/iterator/transition/MenuItem.class
_HEADFIRST_ITERATOR_TRANSITION_SOURCES =  \
	src/headfirst/iterator/transition/Waitress.java \
	src/headfirst/iterator/transition/Menu.java \
	src/headfirst/iterator/transition/MenuItem.java
$(_HEADFIRST_ITERATOR_TRANSITION_CLASSES): $(_HEADFIRST_ITERATOR_TRANSITION_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_ITERATOR_TRANSITION_SOURCES)

_HEADFIRST_SINGLETON_STAT_CLASSES =  \
	classes/headfirst/singleton/stat/Singleton.class \
	classes/headfirst/singleton/stat/SingletonClient.class
_HEADFIRST_SINGLETON_STAT_SOURCES =  \
	src/headfirst/singleton/stat/SingletonClient.java \
	src/headfirst/singleton/stat/Singleton.java
$(_HEADFIRST_SINGLETON_STAT_CLASSES): $(_HEADFIRST_SINGLETON_STAT_SOURCES)
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG)  $(_HEADFIRST_SINGLETON_STAT_SOURCES)



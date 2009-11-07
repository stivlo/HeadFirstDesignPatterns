JAVAC = javac
CLASSES_ARG = -d $(PWD)/classes
JAVAC_FLAGS = -Xlint:unchecked
JAVA_CLASSES =  \
	src/headfirst/facade/hometheater/DvdPlayer.class \
	src/headfirst/facade/hometheater/Screen.class \
	src/headfirst/facade/hometheater/Projector.class \
	src/headfirst/facade/hometheater/CdPlayer.class \
	src/headfirst/facade/hometheater/PopcornPopper.class \
	src/headfirst/facade/hometheater/HomeTheaterFacade.class \
	src/headfirst/facade/hometheater/Amplifier.class \
	src/headfirst/facade/hometheater/HomeTheaterTestDrive.class \
	src/headfirst/facade/hometheater/Tuner.class \
	src/headfirst/facade/hometheater/TheaterLights.class \
	src/headfirst/iterator/dinermergeri/AlternatingDinerMenuIterator.class \
	src/headfirst/iterator/dinermergeri/MenuItem.class \
	src/headfirst/iterator/dinermergeri/Waitress.class \
	src/headfirst/iterator/dinermergeri/Menu.class \
	src/headfirst/iterator/dinermergeri/DinerMenuIterator.class \
	src/headfirst/iterator/dinermergeri/PancakeHouseMenu.class \
	src/headfirst/iterator/dinermergeri/MenuTestDrive.class \
	src/headfirst/iterator/dinermergeri/DinerMenu.class \
	src/headfirst/iterator/dinermerger/AlternatingDinerMenuIterator.class \
	src/headfirst/iterator/dinermerger/Iterator.class \
	src/headfirst/iterator/dinermerger/MenuItem.class \
	src/headfirst/iterator/dinermerger/Waitress.class \
	src/headfirst/iterator/dinermerger/Menu.class \
	src/headfirst/iterator/dinermerger/ArrayIterator.class \
	src/headfirst/iterator/dinermerger/DinerMenuIterator.class \
	src/headfirst/iterator/dinermerger/ArrayListIterator.class \
	src/headfirst/iterator/dinermerger/PancakeHouseMenuIterator.class \
	src/headfirst/iterator/dinermerger/PancakeHouseMenu.class \
	src/headfirst/iterator/dinermerger/MenuTestDrive.class \
	src/headfirst/iterator/dinermerger/DinerMenu.class \
	src/headfirst/iterator/dinermergercafe/AlternatingDinerMenuIterator.class \
	src/headfirst/iterator/dinermergercafe/CafeMenu.class \
	src/headfirst/iterator/dinermergercafe/MenuItem.class \
	src/headfirst/iterator/dinermergercafe/Waitress.class \
	src/headfirst/iterator/dinermergercafe/Menu.class \
	src/headfirst/iterator/dinermergercafe/DinerMenuIterator.class \
	src/headfirst/iterator/dinermergercafe/PancakeHouseMenu.class \
	src/headfirst/iterator/dinermergercafe/MenuTestDrive.class \
	src/headfirst/iterator/dinermergercafe/DinerMenu.class \
	src/headfirst/iterator/transition/MenuItem.class \
	src/headfirst/iterator/transition/Waitress.class \
	src/headfirst/iterator/transition/Menu.class \
	src/headfirst/combining/adapter/GooseAdapter.class \
	src/headfirst/combining/adapter/DuckCall.class \
	src/headfirst/combining/adapter/Quackable.class \
	src/headfirst/combining/adapter/DecoyDuck.class \
	src/headfirst/combining/adapter/RubberDuck.class \
	src/headfirst/combining/adapter/MallardDuck.class \
	src/headfirst/combining/adapter/RedheadDuck.class \
	src/headfirst/combining/adapter/Goose.class \
	src/headfirst/combining/adapter/DuckSimulator.class \
	src/headfirst/combining/composite/GooseAdapter.class \
	src/headfirst/combining/composite/DuckCall.class \
	src/headfirst/combining/composite/Quackable.class \
	src/headfirst/combining/composite/Flock.class \
	src/headfirst/combining/composite/DecoyDuck.class \
	src/headfirst/combining/composite/DuckFactory.class \
	src/headfirst/combining/composite/RubberDuck.class \
	src/headfirst/combining/composite/MallardDuck.class \
	src/headfirst/combining/composite/RedheadDuck.class \
	src/headfirst/combining/composite/QuackCounter.class \
	src/headfirst/combining/composite/Goose.class \
	src/headfirst/combining/composite/DuckSimulator.class \
	src/headfirst/combining/composite/AbstractDuckFactory.class \
	src/headfirst/combining/composite/CountingDuckFactory.class \
	src/headfirst/combining/factory/GooseAdapter.class \
	src/headfirst/combining/factory/DuckCall.class \
	src/headfirst/combining/factory/Quackable.class \
	src/headfirst/combining/factory/DecoyDuck.class \
	src/headfirst/combining/factory/DuckFactory.class \
	src/headfirst/combining/factory/RubberDuck.class \
	src/headfirst/combining/factory/MallardDuck.class \
	src/headfirst/combining/factory/RedheadDuck.class \
	src/headfirst/combining/factory/QuackCounter.class \
	src/headfirst/combining/factory/Goose.class \
	src/headfirst/combining/factory/DuckSimulator.class \
	src/headfirst/combining/factory/AbstractDuckFactory.class \
	src/headfirst/combining/factory/CountingDuckFactory.class \
	src/headfirst/combining/decorator/GooseAdapter.class \
	src/headfirst/combining/decorator/DuckCall.class \
	src/headfirst/combining/decorator/Quackable.class \
	src/headfirst/combining/decorator/DecoyDuck.class \
	src/headfirst/combining/decorator/RubberDuck.class \
	src/headfirst/combining/decorator/MallardDuck.class \
	src/headfirst/combining/decorator/RedheadDuck.class \
	src/headfirst/combining/decorator/QuackCounter.class \
	src/headfirst/combining/decorator/Goose.class \
	src/headfirst/combining/decorator/DuckSimulator.class \
	src/headfirst/combining/observer/GooseAdapter.class \
	src/headfirst/combining/observer/DuckCall.class \
	src/headfirst/combining/observer/Observable.class \
	src/headfirst/combining/observer/Quackable.class \
	src/headfirst/combining/observer/Flock.class \
	src/headfirst/combining/observer/DecoyDuck.class \
	src/headfirst/combining/observer/Observer.class \
	src/headfirst/combining/observer/DuckFactory.class \
	src/headfirst/combining/observer/RubberDuck.class \
	src/headfirst/combining/observer/MallardDuck.class \
	src/headfirst/combining/observer/RedheadDuck.class \
	src/headfirst/combining/observer/QuackCounter.class \
	src/headfirst/combining/observer/Goose.class \
	src/headfirst/combining/observer/DuckSimulator.class \
	src/headfirst/combining/observer/Quackologist.class \
	src/headfirst/combining/observer/AbstractDuckFactory.class \
	src/headfirst/combining/observer/CountingDuckFactory.class \
	src/headfirst/combining/observer/QuackObservable.class \
	src/headfirst/combining/ducks/DuckCall.class \
	src/headfirst/combining/ducks/Quackable.class \
	src/headfirst/combining/ducks/DecoyDuck.class \
	src/headfirst/combining/ducks/RubberDuck.class \
	src/headfirst/combining/ducks/MallardDuck.class \
	src/headfirst/combining/ducks/RedheadDuck.class \
	src/headfirst/combining/ducks/DuckSimulator.class \
	src/headfirst/strategy/FlyRocketPowered.class \
	src/headfirst/strategy/Duck.class \
	src/headfirst/strategy/ModelDuck.class \
	src/headfirst/strategy/FlyBehavior.class \
	src/headfirst/strategy/QuackBehavior.class \
	src/headfirst/strategy/MiniDuckSimulator.class \
	src/headfirst/strategy/DecoyDuck.class \
	src/headfirst/strategy/RedHeadDuck.class \
	src/headfirst/strategy/FlyWithWings.class \
	src/headfirst/strategy/RubberDuck.class \
	src/headfirst/strategy/MuteQuack.class \
	src/headfirst/strategy/MallardDuck.class \
	src/headfirst/strategy/MiniDuckSimulator1.class \
	src/headfirst/strategy/Squeak.class \
	src/headfirst/strategy/FlyNoWay.class \
	src/headfirst/strategy/Quack.class \
	src/headfirst/strategy/FakeQuack.class \
	src/headfirst/combined/djview/BeatModelInterface.class \
	src/headfirst/combined/djview/BeatBar.class \
	src/headfirst/combined/djview/HeartModel.class \
	src/headfirst/combined/djview/HeartTestDrive.class \
	src/headfirst/combined/djview/BeatModel.class \
	src/headfirst/combined/djview/HeartController.class \
	src/headfirst/combined/djview/BeatController.class \
	src/headfirst/combined/djview/DJTestDrive.class \
	src/headfirst/combined/djview/DJView.class \
	src/headfirst/combined/djview/BPMObserver.class \
	src/headfirst/combined/djview/ControllerInterface.class \
	src/headfirst/combined/djview/HeartAdapter.class \
	src/headfirst/combined/djview/HeartModelInterface.class \
	src/headfirst/combined/djview/BeatObserver.class \
	src/headfirst/adapter/iterenum/EI.class \
	src/headfirst/adapter/iterenum/IteratorEnumeration.class \
	src/headfirst/adapter/iterenum/EnumerationIterator.class \
	src/headfirst/adapter/iterenum/IteratorEnumerationTestDrive.class \
	src/headfirst/adapter/iterenum/EnumerationIteratorTestDrive.class \
	src/headfirst/adapter/ducks/Duck.class \
	src/headfirst/adapter/ducks/DuckAdapter.class \
	src/headfirst/adapter/ducks/TurkeyTestDrive.class \
	src/headfirst/adapter/ducks/MallardDuck.class \
	src/headfirst/adapter/ducks/Turkey.class \
	src/headfirst/adapter/ducks/WildTurkey.class \
	src/headfirst/adapter/ducks/DuckTestDrive.class \
	src/headfirst/adapter/ducks/TurkeyAdapter.class \
	src/headfirst/composite/menuiterator/MenuComponent.class \
	src/headfirst/composite/menuiterator/CompositeIterator.class \
	src/headfirst/composite/menuiterator/MenuItem.class \
	src/headfirst/composite/menuiterator/Waitress.class \
	src/headfirst/composite/menuiterator/NullIterator.class \
	src/headfirst/composite/menuiterator/Menu.class \
	src/headfirst/composite/menuiterator/MenuTestDrive.class \
	src/headfirst/composite/menu/MenuComponent.class \
	src/headfirst/composite/menu/MenuItem.class \
	src/headfirst/composite/menu/Waitress.class \
	src/headfirst/composite/menu/Menu.class \
	src/headfirst/composite/menu/MenuTestDrive.class \
	src/headfirst/templatemethod/frame/MyFrame.class \
	src/headfirst/templatemethod/sort/Duck.class \
	src/headfirst/templatemethod/sort/DuckSortTestDrive.class \
	src/headfirst/templatemethod/simplebarista/Tea.class \
	src/headfirst/templatemethod/simplebarista/Coffee.class \
	src/headfirst/templatemethod/simplebarista/Barista.class \
	src/headfirst/templatemethod/barista/BeverageTestDrive.class \
	src/headfirst/templatemethod/barista/CaffeineBeverage.class \
	src/headfirst/templatemethod/barista/Tea.class \
	src/headfirst/templatemethod/barista/CaffeineBeverageWithHook.class \
	src/headfirst/templatemethod/barista/CoffeeWithHook.class \
	src/headfirst/templatemethod/barista/TeaWithHook.class \
	src/headfirst/templatemethod/barista/Coffee.class \
	src/headfirst/templatemethod/applet/MyApplet.class \
	src/headfirst/factory/pizzas/PepperoniPizza.class \
	src/headfirst/factory/pizzas/SimplePizzaFactory.class \
	src/headfirst/factory/pizzas/VeggiePizza.class \
	src/headfirst/factory/pizzas/CheesePizza.class \
	src/headfirst/factory/pizzas/ClamPizza.class \
	src/headfirst/factory/pizzas/PizzaStore.class \
	src/headfirst/factory/pizzas/Pizza.class \
	src/headfirst/factory/pizzas/PizzaTestDrive.class \
	src/headfirst/factory/pizzaaf/NYPizzaStore.class \
	src/headfirst/factory/pizzaaf/PlumTomatoSauce.class \
	src/headfirst/factory/pizzaaf/Dough.class \
	src/headfirst/factory/pizzaaf/ThinCrustDough.class \
	src/headfirst/factory/pizzaaf/RedPepper.class \
	src/headfirst/factory/pizzaaf/NYPizzaIngredientFactory.class \
	src/headfirst/factory/pizzaaf/FrozenClams.class \
	src/headfirst/factory/pizzaaf/Clams.class \
	src/headfirst/factory/pizzaaf/PepperoniPizza.class \
	src/headfirst/factory/pizzaaf/VeggiePizza.class \
	src/headfirst/factory/pizzaaf/Mushroom.class \
	src/headfirst/factory/pizzaaf/Pepperoni.class \
	src/headfirst/factory/pizzaaf/CheesePizza.class \
	src/headfirst/factory/pizzaaf/ReggianoCheese.class \
	src/headfirst/factory/pizzaaf/MozzarellaCheese.class \
	src/headfirst/factory/pizzaaf/ChicagoPizzaIngredientFactory.class \
	src/headfirst/factory/pizzaaf/Spinach.class \
	src/headfirst/factory/pizzaaf/ChicagoPizzaStore.class \
	src/headfirst/factory/pizzaaf/ThickCrustDough.class \
	src/headfirst/factory/pizzaaf/Cheese.class \
	src/headfirst/factory/pizzaaf/BlackOlives.class \
	src/headfirst/factory/pizzaaf/Veggies.class \
	src/headfirst/factory/pizzaaf/Sauce.class \
	src/headfirst/factory/pizzaaf/ParmesanCheese.class \
	src/headfirst/factory/pizzaaf/ClamPizza.class \
	src/headfirst/factory/pizzaaf/PizzaIngredientFactory.class \
	src/headfirst/factory/pizzaaf/PizzaStore.class \
	src/headfirst/factory/pizzaaf/FreshClams.class \
	src/headfirst/factory/pizzaaf/MarinaraSauce.class \
	src/headfirst/factory/pizzaaf/Pizza.class \
	src/headfirst/factory/pizzaaf/Garlic.class \
	src/headfirst/factory/pizzaaf/Eggplant.class \
	src/headfirst/factory/pizzaaf/Onion.class \
	src/headfirst/factory/pizzaaf/PizzaTestDrive.class \
	src/headfirst/factory/pizzaaf/SlicedPepperoni.class \
	src/headfirst/factory/pizzafm/NYPizzaStore.class \
	src/headfirst/factory/pizzafm/ChicagoStyleClamPizza.class \
	src/headfirst/factory/pizzafm/NYStylePepperoniPizza.class \
	src/headfirst/factory/pizzafm/NYStyleClamPizza.class \
	src/headfirst/factory/pizzafm/ChicagoStyleCheesePizza.class \
	src/headfirst/factory/pizzafm/DependentPizzaStore.class \
	src/headfirst/factory/pizzafm/NYStyleVeggiePizza.class \
	src/headfirst/factory/pizzafm/ChicagoPizzaStore.class \
	src/headfirst/factory/pizzafm/ChicagoStylePepperoniPizza.class \
	src/headfirst/factory/pizzafm/NYStyleCheesePizza.class \
	src/headfirst/factory/pizzafm/PizzaStore.class \
	src/headfirst/factory/pizzafm/Pizza.class \
	src/headfirst/factory/pizzafm/ChicagoStyleVeggiePizza.class \
	src/headfirst/factory/pizzafm/PizzaTestDrive.class \
	src/headfirst/singleton/classic/Singleton.class \
	src/headfirst/singleton/chocolate/ChocolateBoiler.class \
	src/headfirst/singleton/chocolate/ChocolateController.class \
	src/headfirst/singleton/subclass/SingletonTestDrive.class \
	src/headfirst/singleton/subclass/HotterSingleton.class \
	src/headfirst/singleton/subclass/Singleton.class \
	src/headfirst/singleton/subclass/CoolerSingleton.class \
	src/headfirst/singleton/stat/Singleton.class \
	src/headfirst/singleton/stat/SingletonClient.class \
	src/headfirst/singleton/threadsafe/Singleton.class \
	src/headfirst/singleton/dcl/Singleton.class \
	src/headfirst/singleton/dcl/SingletonClient.class \
	src/headfirst/command/party/LivingroomLightOnCommand.class \
	src/headfirst/command/party/Command.class \
	src/headfirst/command/party/StereoOnWithCDCommand.class \
	src/headfirst/command/party/CeilingFanOffCommand.class \
	src/headfirst/command/party/NoCommand.class \
	src/headfirst/command/party/TVOffCommand.class \
	src/headfirst/command/party/Light.class \
	src/headfirst/command/party/HottubOffCommand.class \
	src/headfirst/command/party/Stereo.class \
	src/headfirst/command/party/CeilingFanMediumCommand.class \
	src/headfirst/command/party/StereoOnCommand.class \
	src/headfirst/command/party/LivingroomLightOffCommand.class \
	src/headfirst/command/party/MacroCommand.class \
	src/headfirst/command/party/TVOnCommand.class \
	src/headfirst/command/party/StereoOffCommand.class \
	src/headfirst/command/party/RemoteControl.class \
	src/headfirst/command/party/LightOnCommand.class \
	src/headfirst/command/party/TV.class \
	src/headfirst/command/party/RemoteLoader.class \
	src/headfirst/command/party/Hottub.class \
	src/headfirst/command/party/HottubOnCommand.class \
	src/headfirst/command/party/CeilingFanHighCommand.class \
	src/headfirst/command/party/LightOffCommand.class \
	src/headfirst/command/party/CeilingFan.class \
	src/headfirst/command/undo/DimmerLightOnCommand.class \
	src/headfirst/command/undo/Command.class \
	src/headfirst/command/undo/CeilingFanOffCommand.class \
	src/headfirst/command/undo/NoCommand.class \
	src/headfirst/command/undo/Light.class \
	src/headfirst/command/undo/CeilingFanMediumCommand.class \
	src/headfirst/command/undo/RemoteControlWithUndo.class \
	src/headfirst/command/undo/LightOnCommand.class \
	src/headfirst/command/undo/CeilingFanLowCommand.class \
	src/headfirst/command/undo/RemoteLoader.class \
	src/headfirst/command/undo/CeilingFanHighCommand.class \
	src/headfirst/command/undo/LightOffCommand.class \
	src/headfirst/command/undo/DimmerLightOffCommand.class \
	src/headfirst/command/undo/CeilingFan.class \
	src/headfirst/command/simpleremote/Command.class \
	src/headfirst/command/simpleremote/GarageDoorOpenCommand.class \
	src/headfirst/command/simpleremote/RemoteControlTest.class \
	src/headfirst/command/simpleremote/Light.class \
	src/headfirst/command/simpleremote/GarageDoor.class \
	src/headfirst/command/simpleremote/SimpleRemoteControl.class \
	src/headfirst/command/simpleremote/LightOnCommand.class \
	src/headfirst/command/simpleremote/LightOffCommand.class \
	src/headfirst/command/remote/LivingroomLightOnCommand.class \
	src/headfirst/command/remote/Command.class \
	src/headfirst/command/remote/StereoOnWithCDCommand.class \
	src/headfirst/command/remote/CeilingFanOffCommand.class \
	src/headfirst/command/remote/NoCommand.class \
	src/headfirst/command/remote/GarageDoorDownCommand.class \
	src/headfirst/command/remote/Light.class \
	src/headfirst/command/remote/HottubOffCommand.class \
	src/headfirst/command/remote/Stereo.class \
	src/headfirst/command/remote/GarageDoorUpCommand.class \
	src/headfirst/command/remote/GarageDoor.class \
	src/headfirst/command/remote/LivingroomLightOffCommand.class \
	src/headfirst/command/remote/StereoOffCommand.class \
	src/headfirst/command/remote/RemoteControl.class \
	src/headfirst/command/remote/LightOnCommand.class \
	src/headfirst/command/remote/TV.class \
	src/headfirst/command/remote/RemoteLoader.class \
	src/headfirst/command/remote/Hottub.class \
	src/headfirst/command/remote/HottubOnCommand.class \
	src/headfirst/command/remote/LightOffCommand.class \
	src/headfirst/command/remote/CeilingFanOnCommand.class \
	src/headfirst/command/remote/CeilingFan.class \
	src/headfirst/state/gumballstatewinner/GumballMachine.class \
	src/headfirst/state/gumballstatewinner/SoldOutState.class \
	src/headfirst/state/gumballstatewinner/NoQuarterState.class \
	src/headfirst/state/gumballstatewinner/State.class \
	src/headfirst/state/gumballstatewinner/GumballMachineTestDrive.class \
	src/headfirst/state/gumballstatewinner/HasQuarterState.class \
	src/headfirst/state/gumballstatewinner/SoldState.class \
	src/headfirst/state/gumballstatewinner/WinnerState.class \
	src/headfirst/state/gumball/GumballMachine.class \
	src/headfirst/state/gumball/GumballMachineTestDrive.class \
	src/headfirst/state/gumballstate/GumballMachine.class \
	src/headfirst/state/gumballstate/SoldOutState.class \
	src/headfirst/state/gumballstate/NoQuarterState.class \
	src/headfirst/state/gumballstate/State.class \
	src/headfirst/state/gumballstate/GumballMachineTestDrive.class \
	src/headfirst/state/gumballstate/HasQuarterState.class \
	src/headfirst/state/gumballstate/SoldState.class \
	src/headfirst/decorator/starbuzz/Soy.class \
	src/headfirst/decorator/starbuzz/DarkRoast.class \
	src/headfirst/decorator/starbuzz/Mocha.class \
	src/headfirst/decorator/starbuzz/Decaf.class \
	src/headfirst/decorator/starbuzz/HouseBlend.class \
	src/headfirst/decorator/starbuzz/Whip.class \
	src/headfirst/decorator/starbuzz/Milk.class \
	src/headfirst/decorator/starbuzz/Espresso.class \
	src/headfirst/decorator/starbuzz/Beverage.class \
	src/headfirst/decorator/starbuzz/CondimentDecorator.class \
	src/headfirst/decorator/starbuzz/StarbuzzCoffee.class \
	src/headfirst/decorator/io/InputTest.class \
	src/headfirst/decorator/io/LowerCaseInputStream.class \
	src/headfirst/observer/swing/SwingObserverExample.class \
	src/headfirst/observer/weather/DisplayElement.class \
	src/headfirst/observer/weather/Observer.class \
	src/headfirst/observer/weather/WeatherStationHeatIndex.class \
	src/headfirst/observer/weather/CurrentConditionsDisplay.class \
	src/headfirst/observer/weather/WeatherStation.class \
	src/headfirst/observer/weather/HeatIndexDisplay.class \
	src/headfirst/observer/weather/ForecastDisplay.class \
	src/headfirst/observer/weather/StatisticsDisplay.class \
	src/headfirst/observer/weather/Subject.class \
	src/headfirst/observer/weather/WeatherData.class \
	src/headfirst/observer/weatherobservable/DisplayElement.class \
	src/headfirst/observer/weatherobservable/WeatherStationHeatIndex.class \
	src/headfirst/observer/weatherobservable/CurrentConditionsDisplay.class \
	src/headfirst/observer/weatherobservable/WeatherStation.class \
	src/headfirst/observer/weatherobservable/HeatIndexDisplay.class \
	src/headfirst/observer/weatherobservable/ForecastDisplay.class \
	src/headfirst/observer/weatherobservable/StatisticsDisplay.class \
	src/headfirst/observer/weatherobservable/WeatherData.class \
	src/headfirst/proxy/javaproxy/OwnerInvocationHandler.class \
	src/headfirst/proxy/javaproxy/NonOwnerInvocationHandler.class \
	src/headfirst/proxy/javaproxy/MatchMakingTestDrive.class \
	src/headfirst/proxy/javaproxy/PersonBean.class \
	src/headfirst/proxy/javaproxy/PersonBeanImpl.class \
	src/headfirst/proxy/gumball/GumballMachine.class \
	src/headfirst/proxy/gumball/GumballMonitorTestDrive.class \
	src/headfirst/proxy/gumball/GumballMachineRemote.class \
	src/headfirst/proxy/gumball/SoldOutState.class \
	src/headfirst/proxy/gumball/NoQuarterState.class \
	src/headfirst/proxy/gumball/State.class \
	src/headfirst/proxy/gumball/GumballMonitor.class \
	src/headfirst/proxy/gumball/GumballMachineTestDrive.class \
	src/headfirst/proxy/gumball/HasQuarterState.class \
	src/headfirst/proxy/gumball/SoldState.class \
	src/headfirst/proxy/gumball/WinnerState.class \
	src/headfirst/proxy/virtualproxy/ImageProxyTestDrive.class \
	src/headfirst/proxy/virtualproxy/ImageProxy.class \
	src/headfirst/proxy/virtualproxy/ImageComponent.class \
	src/headfirst/proxy/gumballmonitor/GumballMachine.class \
	src/headfirst/proxy/gumballmonitor/SoldOutState.class \
	src/headfirst/proxy/gumballmonitor/NoQuarterState.class \
	src/headfirst/proxy/gumballmonitor/State.class \
	src/headfirst/proxy/gumballmonitor/GumballMonitor.class \
	src/headfirst/proxy/gumballmonitor/GumballMachineTestDrive.class \
	src/headfirst/proxy/gumballmonitor/HasQuarterState.class \
	src/headfirst/proxy/gumballmonitor/SoldState.class \
	src/headfirst/proxy/gumballmonitor/WinnerState.class


all: $(JAVA_CLASSES)


src/headfirst/facade/hometheater/DvdPlayer.class: src/headfirst/facade/hometheater/DvdPlayer.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/DvdPlayer.java

src/headfirst/facade/hometheater/Screen.class: src/headfirst/facade/hometheater/Screen.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/Screen.java

src/headfirst/facade/hometheater/Projector.class: src/headfirst/facade/hometheater/Projector.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/Projector.java

src/headfirst/facade/hometheater/CdPlayer.class: src/headfirst/facade/hometheater/CdPlayer.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/CdPlayer.java

src/headfirst/facade/hometheater/PopcornPopper.class: src/headfirst/facade/hometheater/PopcornPopper.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/PopcornPopper.java

src/headfirst/facade/hometheater/HomeTheaterFacade.class: src/headfirst/facade/hometheater/HomeTheaterFacade.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/HomeTheaterFacade.java

src/headfirst/facade/hometheater/Amplifier.class: src/headfirst/facade/hometheater/Amplifier.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/Amplifier.java

src/headfirst/facade/hometheater/HomeTheaterTestDrive.class: src/headfirst/facade/hometheater/HomeTheaterTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/HomeTheaterTestDrive.java

src/headfirst/facade/hometheater/Tuner.class: src/headfirst/facade/hometheater/Tuner.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/Tuner.java

src/headfirst/facade/hometheater/TheaterLights.class: src/headfirst/facade/hometheater/TheaterLights.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/facade/hometheater/TheaterLights.java

src/headfirst/iterator/dinermergeri/AlternatingDinerMenuIterator.class: src/headfirst/iterator/dinermergeri/AlternatingDinerMenuIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergeri/AlternatingDinerMenuIterator.java

src/headfirst/iterator/dinermergeri/MenuItem.class: src/headfirst/iterator/dinermergeri/MenuItem.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergeri/MenuItem.java

src/headfirst/iterator/dinermergeri/Waitress.class: src/headfirst/iterator/dinermergeri/Waitress.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergeri/Waitress.java

src/headfirst/iterator/dinermergeri/Menu.class: src/headfirst/iterator/dinermergeri/Menu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergeri/Menu.java

src/headfirst/iterator/dinermergeri/DinerMenuIterator.class: src/headfirst/iterator/dinermergeri/DinerMenuIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergeri/DinerMenuIterator.java

src/headfirst/iterator/dinermergeri/PancakeHouseMenu.class: src/headfirst/iterator/dinermergeri/PancakeHouseMenu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergeri/PancakeHouseMenu.java

src/headfirst/iterator/dinermergeri/MenuTestDrive.class: src/headfirst/iterator/dinermergeri/MenuTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergeri/MenuTestDrive.java

src/headfirst/iterator/dinermergeri/DinerMenu.class: src/headfirst/iterator/dinermergeri/DinerMenu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergeri/DinerMenu.java

src/headfirst/iterator/dinermerger/AlternatingDinerMenuIterator.class: src/headfirst/iterator/dinermerger/AlternatingDinerMenuIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/AlternatingDinerMenuIterator.java

src/headfirst/iterator/dinermerger/Iterator.class: src/headfirst/iterator/dinermerger/Iterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/Iterator.java

src/headfirst/iterator/dinermerger/MenuItem.class: src/headfirst/iterator/dinermerger/MenuItem.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/MenuItem.java

src/headfirst/iterator/dinermerger/Waitress.class: src/headfirst/iterator/dinermerger/Waitress.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/Waitress.java

src/headfirst/iterator/dinermerger/Menu.class: src/headfirst/iterator/dinermerger/Menu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/Menu.java

src/headfirst/iterator/dinermerger/ArrayIterator.class: src/headfirst/iterator/dinermerger/ArrayIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/ArrayIterator.java

src/headfirst/iterator/dinermerger/DinerMenuIterator.class: src/headfirst/iterator/dinermerger/DinerMenuIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/DinerMenuIterator.java

src/headfirst/iterator/dinermerger/ArrayListIterator.class: src/headfirst/iterator/dinermerger/ArrayListIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/ArrayListIterator.java

src/headfirst/iterator/dinermerger/PancakeHouseMenuIterator.class: src/headfirst/iterator/dinermerger/PancakeHouseMenuIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/PancakeHouseMenuIterator.java

src/headfirst/iterator/dinermerger/PancakeHouseMenu.class: src/headfirst/iterator/dinermerger/PancakeHouseMenu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/PancakeHouseMenu.java

src/headfirst/iterator/dinermerger/MenuTestDrive.class: src/headfirst/iterator/dinermerger/MenuTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/MenuTestDrive.java

src/headfirst/iterator/dinermerger/DinerMenu.class: src/headfirst/iterator/dinermerger/DinerMenu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermerger/DinerMenu.java

src/headfirst/iterator/dinermergercafe/AlternatingDinerMenuIterator.class: src/headfirst/iterator/dinermergercafe/AlternatingDinerMenuIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/AlternatingDinerMenuIterator.java

src/headfirst/iterator/dinermergercafe/CafeMenu.class: src/headfirst/iterator/dinermergercafe/CafeMenu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/CafeMenu.java

src/headfirst/iterator/dinermergercafe/MenuItem.class: src/headfirst/iterator/dinermergercafe/MenuItem.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/MenuItem.java

src/headfirst/iterator/dinermergercafe/Waitress.class: src/headfirst/iterator/dinermergercafe/Waitress.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/Waitress.java

src/headfirst/iterator/dinermergercafe/Menu.class: src/headfirst/iterator/dinermergercafe/Menu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/Menu.java

src/headfirst/iterator/dinermergercafe/DinerMenuIterator.class: src/headfirst/iterator/dinermergercafe/DinerMenuIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/DinerMenuIterator.java

src/headfirst/iterator/dinermergercafe/PancakeHouseMenu.class: src/headfirst/iterator/dinermergercafe/PancakeHouseMenu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/PancakeHouseMenu.java

src/headfirst/iterator/dinermergercafe/MenuTestDrive.class: src/headfirst/iterator/dinermergercafe/MenuTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/MenuTestDrive.java

src/headfirst/iterator/dinermergercafe/DinerMenu.class: src/headfirst/iterator/dinermergercafe/DinerMenu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/dinermergercafe/DinerMenu.java

src/headfirst/iterator/transition/MenuItem.class: src/headfirst/iterator/transition/MenuItem.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/transition/MenuItem.java

src/headfirst/iterator/transition/Waitress.class: src/headfirst/iterator/transition/Waitress.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/transition/Waitress.java

src/headfirst/iterator/transition/Menu.class: src/headfirst/iterator/transition/Menu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/iterator/transition/Menu.java

src/headfirst/combining/adapter/GooseAdapter.class: src/headfirst/combining/adapter/GooseAdapter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/GooseAdapter.java

src/headfirst/combining/adapter/DuckCall.class: src/headfirst/combining/adapter/DuckCall.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/DuckCall.java

src/headfirst/combining/adapter/Quackable.class: src/headfirst/combining/adapter/Quackable.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/Quackable.java

src/headfirst/combining/adapter/DecoyDuck.class: src/headfirst/combining/adapter/DecoyDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/DecoyDuck.java

src/headfirst/combining/adapter/RubberDuck.class: src/headfirst/combining/adapter/RubberDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/RubberDuck.java

src/headfirst/combining/adapter/MallardDuck.class: src/headfirst/combining/adapter/MallardDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/MallardDuck.java

src/headfirst/combining/adapter/RedheadDuck.class: src/headfirst/combining/adapter/RedheadDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/RedheadDuck.java

src/headfirst/combining/adapter/Goose.class: src/headfirst/combining/adapter/Goose.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/Goose.java

src/headfirst/combining/adapter/DuckSimulator.class: src/headfirst/combining/adapter/DuckSimulator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/adapter/DuckSimulator.java

src/headfirst/combining/composite/GooseAdapter.class: src/headfirst/combining/composite/GooseAdapter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/GooseAdapter.java

src/headfirst/combining/composite/DuckCall.class: src/headfirst/combining/composite/DuckCall.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/DuckCall.java

src/headfirst/combining/composite/Quackable.class: src/headfirst/combining/composite/Quackable.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/Quackable.java

src/headfirst/combining/composite/Flock.class: src/headfirst/combining/composite/Flock.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/Flock.java

src/headfirst/combining/composite/DecoyDuck.class: src/headfirst/combining/composite/DecoyDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/DecoyDuck.java

src/headfirst/combining/composite/DuckFactory.class: src/headfirst/combining/composite/DuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/DuckFactory.java

src/headfirst/combining/composite/RubberDuck.class: src/headfirst/combining/composite/RubberDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/RubberDuck.java

src/headfirst/combining/composite/MallardDuck.class: src/headfirst/combining/composite/MallardDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/MallardDuck.java

src/headfirst/combining/composite/RedheadDuck.class: src/headfirst/combining/composite/RedheadDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/RedheadDuck.java

src/headfirst/combining/composite/QuackCounter.class: src/headfirst/combining/composite/QuackCounter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/QuackCounter.java

src/headfirst/combining/composite/Goose.class: src/headfirst/combining/composite/Goose.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/Goose.java

src/headfirst/combining/composite/DuckSimulator.class: src/headfirst/combining/composite/DuckSimulator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/DuckSimulator.java

src/headfirst/combining/composite/AbstractDuckFactory.class: src/headfirst/combining/composite/AbstractDuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/AbstractDuckFactory.java

src/headfirst/combining/composite/CountingDuckFactory.class: src/headfirst/combining/composite/CountingDuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/composite/CountingDuckFactory.java

src/headfirst/combining/factory/GooseAdapter.class: src/headfirst/combining/factory/GooseAdapter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/GooseAdapter.java

src/headfirst/combining/factory/DuckCall.class: src/headfirst/combining/factory/DuckCall.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/DuckCall.java

src/headfirst/combining/factory/Quackable.class: src/headfirst/combining/factory/Quackable.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/Quackable.java

src/headfirst/combining/factory/DecoyDuck.class: src/headfirst/combining/factory/DecoyDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/DecoyDuck.java

src/headfirst/combining/factory/DuckFactory.class: src/headfirst/combining/factory/DuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/DuckFactory.java

src/headfirst/combining/factory/RubberDuck.class: src/headfirst/combining/factory/RubberDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/RubberDuck.java

src/headfirst/combining/factory/MallardDuck.class: src/headfirst/combining/factory/MallardDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/MallardDuck.java

src/headfirst/combining/factory/RedheadDuck.class: src/headfirst/combining/factory/RedheadDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/RedheadDuck.java

src/headfirst/combining/factory/QuackCounter.class: src/headfirst/combining/factory/QuackCounter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/QuackCounter.java

src/headfirst/combining/factory/Goose.class: src/headfirst/combining/factory/Goose.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/Goose.java

src/headfirst/combining/factory/DuckSimulator.class: src/headfirst/combining/factory/DuckSimulator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/DuckSimulator.java

src/headfirst/combining/factory/AbstractDuckFactory.class: src/headfirst/combining/factory/AbstractDuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/AbstractDuckFactory.java

src/headfirst/combining/factory/CountingDuckFactory.class: src/headfirst/combining/factory/CountingDuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/factory/CountingDuckFactory.java

src/headfirst/combining/decorator/GooseAdapter.class: src/headfirst/combining/decorator/GooseAdapter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/GooseAdapter.java

src/headfirst/combining/decorator/DuckCall.class: src/headfirst/combining/decorator/DuckCall.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/DuckCall.java

src/headfirst/combining/decorator/Quackable.class: src/headfirst/combining/decorator/Quackable.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/Quackable.java

src/headfirst/combining/decorator/DecoyDuck.class: src/headfirst/combining/decorator/DecoyDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/DecoyDuck.java

src/headfirst/combining/decorator/RubberDuck.class: src/headfirst/combining/decorator/RubberDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/RubberDuck.java

src/headfirst/combining/decorator/MallardDuck.class: src/headfirst/combining/decorator/MallardDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/MallardDuck.java

src/headfirst/combining/decorator/RedheadDuck.class: src/headfirst/combining/decorator/RedheadDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/RedheadDuck.java

src/headfirst/combining/decorator/QuackCounter.class: src/headfirst/combining/decorator/QuackCounter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/QuackCounter.java

src/headfirst/combining/decorator/Goose.class: src/headfirst/combining/decorator/Goose.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/Goose.java

src/headfirst/combining/decorator/DuckSimulator.class: src/headfirst/combining/decorator/DuckSimulator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/decorator/DuckSimulator.java

src/headfirst/combining/observer/GooseAdapter.class: src/headfirst/combining/observer/GooseAdapter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/GooseAdapter.java

src/headfirst/combining/observer/DuckCall.class: src/headfirst/combining/observer/DuckCall.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/DuckCall.java

src/headfirst/combining/observer/Observable.class: src/headfirst/combining/observer/Observable.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/Observable.java

src/headfirst/combining/observer/Quackable.class: src/headfirst/combining/observer/Quackable.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/Quackable.java

src/headfirst/combining/observer/Flock.class: src/headfirst/combining/observer/Flock.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/Flock.java

src/headfirst/combining/observer/DecoyDuck.class: src/headfirst/combining/observer/DecoyDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/DecoyDuck.java

src/headfirst/combining/observer/Observer.class: src/headfirst/combining/observer/Observer.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/Observer.java

src/headfirst/combining/observer/DuckFactory.class: src/headfirst/combining/observer/DuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/DuckFactory.java

src/headfirst/combining/observer/RubberDuck.class: src/headfirst/combining/observer/RubberDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/RubberDuck.java

src/headfirst/combining/observer/MallardDuck.class: src/headfirst/combining/observer/MallardDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/MallardDuck.java

src/headfirst/combining/observer/RedheadDuck.class: src/headfirst/combining/observer/RedheadDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/RedheadDuck.java

src/headfirst/combining/observer/QuackCounter.class: src/headfirst/combining/observer/QuackCounter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/QuackCounter.java

src/headfirst/combining/observer/Goose.class: src/headfirst/combining/observer/Goose.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/Goose.java

src/headfirst/combining/observer/DuckSimulator.class: src/headfirst/combining/observer/DuckSimulator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/DuckSimulator.java

src/headfirst/combining/observer/Quackologist.class: src/headfirst/combining/observer/Quackologist.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/Quackologist.java

src/headfirst/combining/observer/AbstractDuckFactory.class: src/headfirst/combining/observer/AbstractDuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/AbstractDuckFactory.java

src/headfirst/combining/observer/CountingDuckFactory.class: src/headfirst/combining/observer/CountingDuckFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/CountingDuckFactory.java

src/headfirst/combining/observer/QuackObservable.class: src/headfirst/combining/observer/QuackObservable.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/observer/QuackObservable.java

src/headfirst/combining/ducks/DuckCall.class: src/headfirst/combining/ducks/DuckCall.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/ducks/DuckCall.java

src/headfirst/combining/ducks/Quackable.class: src/headfirst/combining/ducks/Quackable.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/ducks/Quackable.java

src/headfirst/combining/ducks/DecoyDuck.class: src/headfirst/combining/ducks/DecoyDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/ducks/DecoyDuck.java

src/headfirst/combining/ducks/RubberDuck.class: src/headfirst/combining/ducks/RubberDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/ducks/RubberDuck.java

src/headfirst/combining/ducks/MallardDuck.class: src/headfirst/combining/ducks/MallardDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/ducks/MallardDuck.java

src/headfirst/combining/ducks/RedheadDuck.class: src/headfirst/combining/ducks/RedheadDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/ducks/RedheadDuck.java

src/headfirst/combining/ducks/DuckSimulator.class: src/headfirst/combining/ducks/DuckSimulator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combining/ducks/DuckSimulator.java

src/headfirst/strategy/FlyRocketPowered.class: src/headfirst/strategy/FlyRocketPowered.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/FlyRocketPowered.java

src/headfirst/strategy/Duck.class: src/headfirst/strategy/Duck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/Duck.java

src/headfirst/strategy/ModelDuck.class: src/headfirst/strategy/ModelDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/ModelDuck.java

src/headfirst/strategy/FlyBehavior.class: src/headfirst/strategy/FlyBehavior.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/FlyBehavior.java

src/headfirst/strategy/QuackBehavior.class: src/headfirst/strategy/QuackBehavior.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/QuackBehavior.java

src/headfirst/strategy/MiniDuckSimulator.class: src/headfirst/strategy/MiniDuckSimulator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/MiniDuckSimulator.java

src/headfirst/strategy/DecoyDuck.class: src/headfirst/strategy/DecoyDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/DecoyDuck.java

src/headfirst/strategy/RedHeadDuck.class: src/headfirst/strategy/RedHeadDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/RedHeadDuck.java

src/headfirst/strategy/FlyWithWings.class: src/headfirst/strategy/FlyWithWings.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/FlyWithWings.java

src/headfirst/strategy/RubberDuck.class: src/headfirst/strategy/RubberDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/RubberDuck.java

src/headfirst/strategy/MuteQuack.class: src/headfirst/strategy/MuteQuack.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/MuteQuack.java

src/headfirst/strategy/MallardDuck.class: src/headfirst/strategy/MallardDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/MallardDuck.java

src/headfirst/strategy/MiniDuckSimulator1.class: src/headfirst/strategy/MiniDuckSimulator1.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/MiniDuckSimulator1.java

src/headfirst/strategy/Squeak.class: src/headfirst/strategy/Squeak.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/Squeak.java

src/headfirst/strategy/FlyNoWay.class: src/headfirst/strategy/FlyNoWay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/FlyNoWay.java

src/headfirst/strategy/Quack.class: src/headfirst/strategy/Quack.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/Quack.java

src/headfirst/strategy/FakeQuack.class: src/headfirst/strategy/FakeQuack.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/strategy/FakeQuack.java

src/headfirst/combined/djview/BeatModelInterface.class: src/headfirst/combined/djview/BeatModelInterface.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/BeatModelInterface.java

src/headfirst/combined/djview/BeatBar.class: src/headfirst/combined/djview/BeatBar.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/BeatBar.java

src/headfirst/combined/djview/HeartModel.class: src/headfirst/combined/djview/HeartModel.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/HeartModel.java

src/headfirst/combined/djview/HeartTestDrive.class: src/headfirst/combined/djview/HeartTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/HeartTestDrive.java

src/headfirst/combined/djview/BeatModel.class: src/headfirst/combined/djview/BeatModel.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/BeatModel.java

src/headfirst/combined/djview/HeartController.class: src/headfirst/combined/djview/HeartController.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/HeartController.java

src/headfirst/combined/djview/BeatController.class: src/headfirst/combined/djview/BeatController.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/BeatController.java

src/headfirst/combined/djview/DJTestDrive.class: src/headfirst/combined/djview/DJTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/DJTestDrive.java

src/headfirst/combined/djview/DJView.class: src/headfirst/combined/djview/DJView.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/DJView.java

src/headfirst/combined/djview/BPMObserver.class: src/headfirst/combined/djview/BPMObserver.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/BPMObserver.java

src/headfirst/combined/djview/ControllerInterface.class: src/headfirst/combined/djview/ControllerInterface.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/ControllerInterface.java

src/headfirst/combined/djview/HeartAdapter.class: src/headfirst/combined/djview/HeartAdapter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/HeartAdapter.java

src/headfirst/combined/djview/HeartModelInterface.class: src/headfirst/combined/djview/HeartModelInterface.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/HeartModelInterface.java

src/headfirst/combined/djview/BeatObserver.class: src/headfirst/combined/djview/BeatObserver.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/combined/djview/BeatObserver.java

src/headfirst/adapter/iterenum/EI.class: src/headfirst/adapter/iterenum/EI.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/iterenum/EI.java

src/headfirst/adapter/iterenum/IteratorEnumeration.class: src/headfirst/adapter/iterenum/IteratorEnumeration.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/iterenum/IteratorEnumeration.java

src/headfirst/adapter/iterenum/EnumerationIterator.class: src/headfirst/adapter/iterenum/EnumerationIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/iterenum/EnumerationIterator.java

src/headfirst/adapter/iterenum/IteratorEnumerationTestDrive.class: src/headfirst/adapter/iterenum/IteratorEnumerationTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/iterenum/IteratorEnumerationTestDrive.java

src/headfirst/adapter/iterenum/EnumerationIteratorTestDrive.class: src/headfirst/adapter/iterenum/EnumerationIteratorTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/iterenum/EnumerationIteratorTestDrive.java

src/headfirst/adapter/ducks/Duck.class: src/headfirst/adapter/ducks/Duck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/ducks/Duck.java

src/headfirst/adapter/ducks/DuckAdapter.class: src/headfirst/adapter/ducks/DuckAdapter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/ducks/DuckAdapter.java

src/headfirst/adapter/ducks/TurkeyTestDrive.class: src/headfirst/adapter/ducks/TurkeyTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/ducks/TurkeyTestDrive.java

src/headfirst/adapter/ducks/MallardDuck.class: src/headfirst/adapter/ducks/MallardDuck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/ducks/MallardDuck.java

src/headfirst/adapter/ducks/Turkey.class: src/headfirst/adapter/ducks/Turkey.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/ducks/Turkey.java

src/headfirst/adapter/ducks/WildTurkey.class: src/headfirst/adapter/ducks/WildTurkey.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/ducks/WildTurkey.java

src/headfirst/adapter/ducks/DuckTestDrive.class: src/headfirst/adapter/ducks/DuckTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/ducks/DuckTestDrive.java

src/headfirst/adapter/ducks/TurkeyAdapter.class: src/headfirst/adapter/ducks/TurkeyAdapter.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/adapter/ducks/TurkeyAdapter.java

src/headfirst/composite/menuiterator/MenuComponent.class: src/headfirst/composite/menuiterator/MenuComponent.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menuiterator/MenuComponent.java

src/headfirst/composite/menuiterator/CompositeIterator.class: src/headfirst/composite/menuiterator/CompositeIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menuiterator/CompositeIterator.java

src/headfirst/composite/menuiterator/MenuItem.class: src/headfirst/composite/menuiterator/MenuItem.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menuiterator/MenuItem.java

src/headfirst/composite/menuiterator/Waitress.class: src/headfirst/composite/menuiterator/Waitress.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menuiterator/Waitress.java

src/headfirst/composite/menuiterator/NullIterator.class: src/headfirst/composite/menuiterator/NullIterator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menuiterator/NullIterator.java

src/headfirst/composite/menuiterator/Menu.class: src/headfirst/composite/menuiterator/Menu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menuiterator/Menu.java

src/headfirst/composite/menuiterator/MenuTestDrive.class: src/headfirst/composite/menuiterator/MenuTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menuiterator/MenuTestDrive.java

src/headfirst/composite/menu/MenuComponent.class: src/headfirst/composite/menu/MenuComponent.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menu/MenuComponent.java

src/headfirst/composite/menu/MenuItem.class: src/headfirst/composite/menu/MenuItem.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menu/MenuItem.java

src/headfirst/composite/menu/Waitress.class: src/headfirst/composite/menu/Waitress.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menu/Waitress.java

src/headfirst/composite/menu/Menu.class: src/headfirst/composite/menu/Menu.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menu/Menu.java

src/headfirst/composite/menu/MenuTestDrive.class: src/headfirst/composite/menu/MenuTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/composite/menu/MenuTestDrive.java

src/headfirst/templatemethod/frame/MyFrame.class: src/headfirst/templatemethod/frame/MyFrame.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/frame/MyFrame.java

src/headfirst/templatemethod/sort/Duck.class: src/headfirst/templatemethod/sort/Duck.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/sort/Duck.java

src/headfirst/templatemethod/sort/DuckSortTestDrive.class: src/headfirst/templatemethod/sort/DuckSortTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/sort/DuckSortTestDrive.java

src/headfirst/templatemethod/simplebarista/Tea.class: src/headfirst/templatemethod/simplebarista/Tea.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/simplebarista/Tea.java

src/headfirst/templatemethod/simplebarista/Coffee.class: src/headfirst/templatemethod/simplebarista/Coffee.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/simplebarista/Coffee.java

src/headfirst/templatemethod/simplebarista/Barista.class: src/headfirst/templatemethod/simplebarista/Barista.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/simplebarista/Barista.java

src/headfirst/templatemethod/barista/BeverageTestDrive.class: src/headfirst/templatemethod/barista/BeverageTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/barista/BeverageTestDrive.java

src/headfirst/templatemethod/barista/CaffeineBeverage.class: src/headfirst/templatemethod/barista/CaffeineBeverage.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/barista/CaffeineBeverage.java

src/headfirst/templatemethod/barista/Tea.class: src/headfirst/templatemethod/barista/Tea.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/barista/Tea.java

src/headfirst/templatemethod/barista/CaffeineBeverageWithHook.class: src/headfirst/templatemethod/barista/CaffeineBeverageWithHook.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/barista/CaffeineBeverageWithHook.java

src/headfirst/templatemethod/barista/CoffeeWithHook.class: src/headfirst/templatemethod/barista/CoffeeWithHook.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/barista/CoffeeWithHook.java

src/headfirst/templatemethod/barista/TeaWithHook.class: src/headfirst/templatemethod/barista/TeaWithHook.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/barista/TeaWithHook.java

src/headfirst/templatemethod/barista/Coffee.class: src/headfirst/templatemethod/barista/Coffee.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/barista/Coffee.java

src/headfirst/templatemethod/applet/MyApplet.class: src/headfirst/templatemethod/applet/MyApplet.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/templatemethod/applet/MyApplet.java

src/headfirst/factory/pizzas/PepperoniPizza.class: src/headfirst/factory/pizzas/PepperoniPizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzas/PepperoniPizza.java

src/headfirst/factory/pizzas/SimplePizzaFactory.class: src/headfirst/factory/pizzas/SimplePizzaFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzas/SimplePizzaFactory.java

src/headfirst/factory/pizzas/VeggiePizza.class: src/headfirst/factory/pizzas/VeggiePizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzas/VeggiePizza.java

src/headfirst/factory/pizzas/CheesePizza.class: src/headfirst/factory/pizzas/CheesePizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzas/CheesePizza.java

src/headfirst/factory/pizzas/ClamPizza.class: src/headfirst/factory/pizzas/ClamPizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzas/ClamPizza.java

src/headfirst/factory/pizzas/PizzaStore.class: src/headfirst/factory/pizzas/PizzaStore.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzas/PizzaStore.java

src/headfirst/factory/pizzas/Pizza.class: src/headfirst/factory/pizzas/Pizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzas/Pizza.java

src/headfirst/factory/pizzas/PizzaTestDrive.class: src/headfirst/factory/pizzas/PizzaTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzas/PizzaTestDrive.java

src/headfirst/factory/pizzaaf/NYPizzaStore.class: src/headfirst/factory/pizzaaf/NYPizzaStore.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/NYPizzaStore.java

src/headfirst/factory/pizzaaf/PlumTomatoSauce.class: src/headfirst/factory/pizzaaf/PlumTomatoSauce.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/PlumTomatoSauce.java

src/headfirst/factory/pizzaaf/Dough.class: src/headfirst/factory/pizzaaf/Dough.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Dough.java

src/headfirst/factory/pizzaaf/ThinCrustDough.class: src/headfirst/factory/pizzaaf/ThinCrustDough.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/ThinCrustDough.java

src/headfirst/factory/pizzaaf/RedPepper.class: src/headfirst/factory/pizzaaf/RedPepper.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/RedPepper.java

src/headfirst/factory/pizzaaf/NYPizzaIngredientFactory.class: src/headfirst/factory/pizzaaf/NYPizzaIngredientFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/NYPizzaIngredientFactory.java

src/headfirst/factory/pizzaaf/FrozenClams.class: src/headfirst/factory/pizzaaf/FrozenClams.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/FrozenClams.java

src/headfirst/factory/pizzaaf/Clams.class: src/headfirst/factory/pizzaaf/Clams.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Clams.java

src/headfirst/factory/pizzaaf/PepperoniPizza.class: src/headfirst/factory/pizzaaf/PepperoniPizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/PepperoniPizza.java

src/headfirst/factory/pizzaaf/VeggiePizza.class: src/headfirst/factory/pizzaaf/VeggiePizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/VeggiePizza.java

src/headfirst/factory/pizzaaf/Mushroom.class: src/headfirst/factory/pizzaaf/Mushroom.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Mushroom.java

src/headfirst/factory/pizzaaf/Pepperoni.class: src/headfirst/factory/pizzaaf/Pepperoni.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Pepperoni.java

src/headfirst/factory/pizzaaf/CheesePizza.class: src/headfirst/factory/pizzaaf/CheesePizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/CheesePizza.java

src/headfirst/factory/pizzaaf/ReggianoCheese.class: src/headfirst/factory/pizzaaf/ReggianoCheese.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/ReggianoCheese.java

src/headfirst/factory/pizzaaf/MozzarellaCheese.class: src/headfirst/factory/pizzaaf/MozzarellaCheese.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/MozzarellaCheese.java

src/headfirst/factory/pizzaaf/ChicagoPizzaIngredientFactory.class: src/headfirst/factory/pizzaaf/ChicagoPizzaIngredientFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/ChicagoPizzaIngredientFactory.java

src/headfirst/factory/pizzaaf/Spinach.class: src/headfirst/factory/pizzaaf/Spinach.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Spinach.java

src/headfirst/factory/pizzaaf/ChicagoPizzaStore.class: src/headfirst/factory/pizzaaf/ChicagoPizzaStore.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/ChicagoPizzaStore.java

src/headfirst/factory/pizzaaf/ThickCrustDough.class: src/headfirst/factory/pizzaaf/ThickCrustDough.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/ThickCrustDough.java

src/headfirst/factory/pizzaaf/Cheese.class: src/headfirst/factory/pizzaaf/Cheese.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Cheese.java

src/headfirst/factory/pizzaaf/BlackOlives.class: src/headfirst/factory/pizzaaf/BlackOlives.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/BlackOlives.java

src/headfirst/factory/pizzaaf/Veggies.class: src/headfirst/factory/pizzaaf/Veggies.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Veggies.java

src/headfirst/factory/pizzaaf/Sauce.class: src/headfirst/factory/pizzaaf/Sauce.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Sauce.java

src/headfirst/factory/pizzaaf/ParmesanCheese.class: src/headfirst/factory/pizzaaf/ParmesanCheese.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/ParmesanCheese.java

src/headfirst/factory/pizzaaf/ClamPizza.class: src/headfirst/factory/pizzaaf/ClamPizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/ClamPizza.java

src/headfirst/factory/pizzaaf/PizzaIngredientFactory.class: src/headfirst/factory/pizzaaf/PizzaIngredientFactory.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/PizzaIngredientFactory.java

src/headfirst/factory/pizzaaf/PizzaStore.class: src/headfirst/factory/pizzaaf/PizzaStore.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/PizzaStore.java

src/headfirst/factory/pizzaaf/FreshClams.class: src/headfirst/factory/pizzaaf/FreshClams.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/FreshClams.java

src/headfirst/factory/pizzaaf/MarinaraSauce.class: src/headfirst/factory/pizzaaf/MarinaraSauce.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/MarinaraSauce.java

src/headfirst/factory/pizzaaf/Pizza.class: src/headfirst/factory/pizzaaf/Pizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Pizza.java

src/headfirst/factory/pizzaaf/Garlic.class: src/headfirst/factory/pizzaaf/Garlic.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Garlic.java

src/headfirst/factory/pizzaaf/Eggplant.class: src/headfirst/factory/pizzaaf/Eggplant.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Eggplant.java

src/headfirst/factory/pizzaaf/Onion.class: src/headfirst/factory/pizzaaf/Onion.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/Onion.java

src/headfirst/factory/pizzaaf/PizzaTestDrive.class: src/headfirst/factory/pizzaaf/PizzaTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/PizzaTestDrive.java

src/headfirst/factory/pizzaaf/SlicedPepperoni.class: src/headfirst/factory/pizzaaf/SlicedPepperoni.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzaaf/SlicedPepperoni.java

src/headfirst/factory/pizzafm/NYPizzaStore.class: src/headfirst/factory/pizzafm/NYPizzaStore.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/NYPizzaStore.java

src/headfirst/factory/pizzafm/ChicagoStyleClamPizza.class: src/headfirst/factory/pizzafm/ChicagoStyleClamPizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/ChicagoStyleClamPizza.java

src/headfirst/factory/pizzafm/NYStylePepperoniPizza.class: src/headfirst/factory/pizzafm/NYStylePepperoniPizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/NYStylePepperoniPizza.java

src/headfirst/factory/pizzafm/NYStyleClamPizza.class: src/headfirst/factory/pizzafm/NYStyleClamPizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/NYStyleClamPizza.java

src/headfirst/factory/pizzafm/ChicagoStyleCheesePizza.class: src/headfirst/factory/pizzafm/ChicagoStyleCheesePizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/ChicagoStyleCheesePizza.java

src/headfirst/factory/pizzafm/DependentPizzaStore.class: src/headfirst/factory/pizzafm/DependentPizzaStore.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/DependentPizzaStore.java

src/headfirst/factory/pizzafm/NYStyleVeggiePizza.class: src/headfirst/factory/pizzafm/NYStyleVeggiePizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/NYStyleVeggiePizza.java

src/headfirst/factory/pizzafm/ChicagoPizzaStore.class: src/headfirst/factory/pizzafm/ChicagoPizzaStore.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/ChicagoPizzaStore.java

src/headfirst/factory/pizzafm/ChicagoStylePepperoniPizza.class: src/headfirst/factory/pizzafm/ChicagoStylePepperoniPizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/ChicagoStylePepperoniPizza.java

src/headfirst/factory/pizzafm/NYStyleCheesePizza.class: src/headfirst/factory/pizzafm/NYStyleCheesePizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/NYStyleCheesePizza.java

src/headfirst/factory/pizzafm/PizzaStore.class: src/headfirst/factory/pizzafm/PizzaStore.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/PizzaStore.java

src/headfirst/factory/pizzafm/Pizza.class: src/headfirst/factory/pizzafm/Pizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/Pizza.java

src/headfirst/factory/pizzafm/ChicagoStyleVeggiePizza.class: src/headfirst/factory/pizzafm/ChicagoStyleVeggiePizza.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/ChicagoStyleVeggiePizza.java

src/headfirst/factory/pizzafm/PizzaTestDrive.class: src/headfirst/factory/pizzafm/PizzaTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/factory/pizzafm/PizzaTestDrive.java

src/headfirst/singleton/classic/Singleton.class: src/headfirst/singleton/classic/Singleton.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/classic/Singleton.java

src/headfirst/singleton/chocolate/ChocolateBoiler.class: src/headfirst/singleton/chocolate/ChocolateBoiler.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/chocolate/ChocolateBoiler.java

src/headfirst/singleton/chocolate/ChocolateController.class: src/headfirst/singleton/chocolate/ChocolateController.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/chocolate/ChocolateController.java

src/headfirst/singleton/subclass/SingletonTestDrive.class: src/headfirst/singleton/subclass/SingletonTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/subclass/SingletonTestDrive.java

src/headfirst/singleton/subclass/HotterSingleton.class: src/headfirst/singleton/subclass/HotterSingleton.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/subclass/HotterSingleton.java

src/headfirst/singleton/subclass/Singleton.class: src/headfirst/singleton/subclass/Singleton.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/subclass/Singleton.java

src/headfirst/singleton/subclass/CoolerSingleton.class: src/headfirst/singleton/subclass/CoolerSingleton.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/subclass/CoolerSingleton.java

src/headfirst/singleton/stat/Singleton.class: src/headfirst/singleton/stat/Singleton.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/stat/Singleton.java

src/headfirst/singleton/stat/SingletonClient.class: src/headfirst/singleton/stat/SingletonClient.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/stat/SingletonClient.java

src/headfirst/singleton/threadsafe/Singleton.class: src/headfirst/singleton/threadsafe/Singleton.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/threadsafe/Singleton.java

src/headfirst/singleton/dcl/Singleton.class: src/headfirst/singleton/dcl/Singleton.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/dcl/Singleton.java

src/headfirst/singleton/dcl/SingletonClient.class: src/headfirst/singleton/dcl/SingletonClient.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/singleton/dcl/SingletonClient.java

src/headfirst/command/party/LivingroomLightOnCommand.class: src/headfirst/command/party/LivingroomLightOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/LivingroomLightOnCommand.java

src/headfirst/command/party/Command.class: src/headfirst/command/party/Command.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/Command.java

src/headfirst/command/party/StereoOnWithCDCommand.class: src/headfirst/command/party/StereoOnWithCDCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/StereoOnWithCDCommand.java

src/headfirst/command/party/CeilingFanOffCommand.class: src/headfirst/command/party/CeilingFanOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/CeilingFanOffCommand.java

src/headfirst/command/party/NoCommand.class: src/headfirst/command/party/NoCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/NoCommand.java

src/headfirst/command/party/TVOffCommand.class: src/headfirst/command/party/TVOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/TVOffCommand.java

src/headfirst/command/party/Light.class: src/headfirst/command/party/Light.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/Light.java

src/headfirst/command/party/HottubOffCommand.class: src/headfirst/command/party/HottubOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/HottubOffCommand.java

src/headfirst/command/party/Stereo.class: src/headfirst/command/party/Stereo.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/Stereo.java

src/headfirst/command/party/CeilingFanMediumCommand.class: src/headfirst/command/party/CeilingFanMediumCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/CeilingFanMediumCommand.java

src/headfirst/command/party/StereoOnCommand.class: src/headfirst/command/party/StereoOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/StereoOnCommand.java

src/headfirst/command/party/LivingroomLightOffCommand.class: src/headfirst/command/party/LivingroomLightOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/LivingroomLightOffCommand.java

src/headfirst/command/party/MacroCommand.class: src/headfirst/command/party/MacroCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/MacroCommand.java

src/headfirst/command/party/TVOnCommand.class: src/headfirst/command/party/TVOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/TVOnCommand.java

src/headfirst/command/party/StereoOffCommand.class: src/headfirst/command/party/StereoOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/StereoOffCommand.java

src/headfirst/command/party/RemoteControl.class: src/headfirst/command/party/RemoteControl.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/RemoteControl.java

src/headfirst/command/party/LightOnCommand.class: src/headfirst/command/party/LightOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/LightOnCommand.java

src/headfirst/command/party/TV.class: src/headfirst/command/party/TV.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/TV.java

src/headfirst/command/party/RemoteLoader.class: src/headfirst/command/party/RemoteLoader.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/RemoteLoader.java

src/headfirst/command/party/Hottub.class: src/headfirst/command/party/Hottub.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/Hottub.java

src/headfirst/command/party/HottubOnCommand.class: src/headfirst/command/party/HottubOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/HottubOnCommand.java

src/headfirst/command/party/CeilingFanHighCommand.class: src/headfirst/command/party/CeilingFanHighCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/CeilingFanHighCommand.java

src/headfirst/command/party/LightOffCommand.class: src/headfirst/command/party/LightOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/LightOffCommand.java

src/headfirst/command/party/CeilingFan.class: src/headfirst/command/party/CeilingFan.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/party/CeilingFan.java

src/headfirst/command/undo/DimmerLightOnCommand.class: src/headfirst/command/undo/DimmerLightOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/DimmerLightOnCommand.java

src/headfirst/command/undo/Command.class: src/headfirst/command/undo/Command.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/Command.java

src/headfirst/command/undo/CeilingFanOffCommand.class: src/headfirst/command/undo/CeilingFanOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/CeilingFanOffCommand.java

src/headfirst/command/undo/NoCommand.class: src/headfirst/command/undo/NoCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/NoCommand.java

src/headfirst/command/undo/Light.class: src/headfirst/command/undo/Light.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/Light.java

src/headfirst/command/undo/CeilingFanMediumCommand.class: src/headfirst/command/undo/CeilingFanMediumCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/CeilingFanMediumCommand.java

src/headfirst/command/undo/RemoteControlWithUndo.class: src/headfirst/command/undo/RemoteControlWithUndo.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/RemoteControlWithUndo.java

src/headfirst/command/undo/LightOnCommand.class: src/headfirst/command/undo/LightOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/LightOnCommand.java

src/headfirst/command/undo/CeilingFanLowCommand.class: src/headfirst/command/undo/CeilingFanLowCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/CeilingFanLowCommand.java

src/headfirst/command/undo/RemoteLoader.class: src/headfirst/command/undo/RemoteLoader.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/RemoteLoader.java

src/headfirst/command/undo/CeilingFanHighCommand.class: src/headfirst/command/undo/CeilingFanHighCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/CeilingFanHighCommand.java

src/headfirst/command/undo/LightOffCommand.class: src/headfirst/command/undo/LightOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/LightOffCommand.java

src/headfirst/command/undo/DimmerLightOffCommand.class: src/headfirst/command/undo/DimmerLightOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/DimmerLightOffCommand.java

src/headfirst/command/undo/CeilingFan.class: src/headfirst/command/undo/CeilingFan.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/undo/CeilingFan.java

src/headfirst/command/simpleremote/Command.class: src/headfirst/command/simpleremote/Command.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/simpleremote/Command.java

src/headfirst/command/simpleremote/GarageDoorOpenCommand.class: src/headfirst/command/simpleremote/GarageDoorOpenCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/simpleremote/GarageDoorOpenCommand.java

src/headfirst/command/simpleremote/RemoteControlTest.class: src/headfirst/command/simpleremote/RemoteControlTest.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/simpleremote/RemoteControlTest.java

src/headfirst/command/simpleremote/Light.class: src/headfirst/command/simpleremote/Light.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/simpleremote/Light.java

src/headfirst/command/simpleremote/GarageDoor.class: src/headfirst/command/simpleremote/GarageDoor.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/simpleremote/GarageDoor.java

src/headfirst/command/simpleremote/SimpleRemoteControl.class: src/headfirst/command/simpleremote/SimpleRemoteControl.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/simpleremote/SimpleRemoteControl.java

src/headfirst/command/simpleremote/LightOnCommand.class: src/headfirst/command/simpleremote/LightOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/simpleremote/LightOnCommand.java

src/headfirst/command/simpleremote/LightOffCommand.class: src/headfirst/command/simpleremote/LightOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/simpleremote/LightOffCommand.java

src/headfirst/command/remote/LivingroomLightOnCommand.class: src/headfirst/command/remote/LivingroomLightOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/LivingroomLightOnCommand.java

src/headfirst/command/remote/Command.class: src/headfirst/command/remote/Command.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/Command.java

src/headfirst/command/remote/StereoOnWithCDCommand.class: src/headfirst/command/remote/StereoOnWithCDCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/StereoOnWithCDCommand.java

src/headfirst/command/remote/CeilingFanOffCommand.class: src/headfirst/command/remote/CeilingFanOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/CeilingFanOffCommand.java

src/headfirst/command/remote/NoCommand.class: src/headfirst/command/remote/NoCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/NoCommand.java

src/headfirst/command/remote/GarageDoorDownCommand.class: src/headfirst/command/remote/GarageDoorDownCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/GarageDoorDownCommand.java

src/headfirst/command/remote/Light.class: src/headfirst/command/remote/Light.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/Light.java

src/headfirst/command/remote/HottubOffCommand.class: src/headfirst/command/remote/HottubOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/HottubOffCommand.java

src/headfirst/command/remote/Stereo.class: src/headfirst/command/remote/Stereo.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/Stereo.java

src/headfirst/command/remote/GarageDoorUpCommand.class: src/headfirst/command/remote/GarageDoorUpCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/GarageDoorUpCommand.java

src/headfirst/command/remote/GarageDoor.class: src/headfirst/command/remote/GarageDoor.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/GarageDoor.java

src/headfirst/command/remote/LivingroomLightOffCommand.class: src/headfirst/command/remote/LivingroomLightOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/LivingroomLightOffCommand.java

src/headfirst/command/remote/StereoOffCommand.class: src/headfirst/command/remote/StereoOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/StereoOffCommand.java

src/headfirst/command/remote/RemoteControl.class: src/headfirst/command/remote/RemoteControl.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/RemoteControl.java

src/headfirst/command/remote/LightOnCommand.class: src/headfirst/command/remote/LightOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/LightOnCommand.java

src/headfirst/command/remote/TV.class: src/headfirst/command/remote/TV.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/TV.java

src/headfirst/command/remote/RemoteLoader.class: src/headfirst/command/remote/RemoteLoader.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/RemoteLoader.java

src/headfirst/command/remote/Hottub.class: src/headfirst/command/remote/Hottub.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/Hottub.java

src/headfirst/command/remote/HottubOnCommand.class: src/headfirst/command/remote/HottubOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/HottubOnCommand.java

src/headfirst/command/remote/LightOffCommand.class: src/headfirst/command/remote/LightOffCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/LightOffCommand.java

src/headfirst/command/remote/CeilingFanOnCommand.class: src/headfirst/command/remote/CeilingFanOnCommand.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/CeilingFanOnCommand.java

src/headfirst/command/remote/CeilingFan.class: src/headfirst/command/remote/CeilingFan.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/command/remote/CeilingFan.java

src/headfirst/state/gumballstatewinner/GumballMachine.class: src/headfirst/state/gumballstatewinner/GumballMachine.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstatewinner/GumballMachine.java

src/headfirst/state/gumballstatewinner/SoldOutState.class: src/headfirst/state/gumballstatewinner/SoldOutState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstatewinner/SoldOutState.java

src/headfirst/state/gumballstatewinner/NoQuarterState.class: src/headfirst/state/gumballstatewinner/NoQuarterState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstatewinner/NoQuarterState.java

src/headfirst/state/gumballstatewinner/State.class: src/headfirst/state/gumballstatewinner/State.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstatewinner/State.java

src/headfirst/state/gumballstatewinner/GumballMachineTestDrive.class: src/headfirst/state/gumballstatewinner/GumballMachineTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstatewinner/GumballMachineTestDrive.java

src/headfirst/state/gumballstatewinner/HasQuarterState.class: src/headfirst/state/gumballstatewinner/HasQuarterState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstatewinner/HasQuarterState.java

src/headfirst/state/gumballstatewinner/SoldState.class: src/headfirst/state/gumballstatewinner/SoldState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstatewinner/SoldState.java

src/headfirst/state/gumballstatewinner/WinnerState.class: src/headfirst/state/gumballstatewinner/WinnerState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstatewinner/WinnerState.java

src/headfirst/state/gumball/GumballMachine.class: src/headfirst/state/gumball/GumballMachine.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumball/GumballMachine.java

src/headfirst/state/gumball/GumballMachineTestDrive.class: src/headfirst/state/gumball/GumballMachineTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumball/GumballMachineTestDrive.java

src/headfirst/state/gumballstate/GumballMachine.class: src/headfirst/state/gumballstate/GumballMachine.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstate/GumballMachine.java

src/headfirst/state/gumballstate/SoldOutState.class: src/headfirst/state/gumballstate/SoldOutState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstate/SoldOutState.java

src/headfirst/state/gumballstate/NoQuarterState.class: src/headfirst/state/gumballstate/NoQuarterState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstate/NoQuarterState.java

src/headfirst/state/gumballstate/State.class: src/headfirst/state/gumballstate/State.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstate/State.java

src/headfirst/state/gumballstate/GumballMachineTestDrive.class: src/headfirst/state/gumballstate/GumballMachineTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstate/GumballMachineTestDrive.java

src/headfirst/state/gumballstate/HasQuarterState.class: src/headfirst/state/gumballstate/HasQuarterState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstate/HasQuarterState.java

src/headfirst/state/gumballstate/SoldState.class: src/headfirst/state/gumballstate/SoldState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/state/gumballstate/SoldState.java

src/headfirst/decorator/starbuzz/Soy.class: src/headfirst/decorator/starbuzz/Soy.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/Soy.java

src/headfirst/decorator/starbuzz/DarkRoast.class: src/headfirst/decorator/starbuzz/DarkRoast.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/DarkRoast.java

src/headfirst/decorator/starbuzz/Mocha.class: src/headfirst/decorator/starbuzz/Mocha.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/Mocha.java

src/headfirst/decorator/starbuzz/Decaf.class: src/headfirst/decorator/starbuzz/Decaf.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/Decaf.java

src/headfirst/decorator/starbuzz/HouseBlend.class: src/headfirst/decorator/starbuzz/HouseBlend.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/HouseBlend.java

src/headfirst/decorator/starbuzz/Whip.class: src/headfirst/decorator/starbuzz/Whip.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/Whip.java

src/headfirst/decorator/starbuzz/Milk.class: src/headfirst/decorator/starbuzz/Milk.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/Milk.java

src/headfirst/decorator/starbuzz/Espresso.class: src/headfirst/decorator/starbuzz/Espresso.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/Espresso.java

src/headfirst/decorator/starbuzz/Beverage.class: src/headfirst/decorator/starbuzz/Beverage.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/Beverage.java

src/headfirst/decorator/starbuzz/CondimentDecorator.class: src/headfirst/decorator/starbuzz/CondimentDecorator.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/CondimentDecorator.java

src/headfirst/decorator/starbuzz/StarbuzzCoffee.class: src/headfirst/decorator/starbuzz/StarbuzzCoffee.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/starbuzz/StarbuzzCoffee.java

src/headfirst/decorator/io/InputTest.class: src/headfirst/decorator/io/InputTest.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/io/InputTest.java

src/headfirst/decorator/io/LowerCaseInputStream.class: src/headfirst/decorator/io/LowerCaseInputStream.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/decorator/io/LowerCaseInputStream.java

src/headfirst/observer/swing/SwingObserverExample.class: src/headfirst/observer/swing/SwingObserverExample.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/swing/SwingObserverExample.java

src/headfirst/observer/weather/DisplayElement.class: src/headfirst/observer/weather/DisplayElement.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/DisplayElement.java

src/headfirst/observer/weather/Observer.class: src/headfirst/observer/weather/Observer.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/Observer.java

src/headfirst/observer/weather/WeatherStationHeatIndex.class: src/headfirst/observer/weather/WeatherStationHeatIndex.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/WeatherStationHeatIndex.java

src/headfirst/observer/weather/CurrentConditionsDisplay.class: src/headfirst/observer/weather/CurrentConditionsDisplay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/CurrentConditionsDisplay.java

src/headfirst/observer/weather/WeatherStation.class: src/headfirst/observer/weather/WeatherStation.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/WeatherStation.java

src/headfirst/observer/weather/HeatIndexDisplay.class: src/headfirst/observer/weather/HeatIndexDisplay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/HeatIndexDisplay.java

src/headfirst/observer/weather/ForecastDisplay.class: src/headfirst/observer/weather/ForecastDisplay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/ForecastDisplay.java

src/headfirst/observer/weather/StatisticsDisplay.class: src/headfirst/observer/weather/StatisticsDisplay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/StatisticsDisplay.java

src/headfirst/observer/weather/Subject.class: src/headfirst/observer/weather/Subject.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/Subject.java

src/headfirst/observer/weather/WeatherData.class: src/headfirst/observer/weather/WeatherData.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weather/WeatherData.java

src/headfirst/observer/weatherobservable/DisplayElement.class: src/headfirst/observer/weatherobservable/DisplayElement.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weatherobservable/DisplayElement.java

src/headfirst/observer/weatherobservable/WeatherStationHeatIndex.class: src/headfirst/observer/weatherobservable/WeatherStationHeatIndex.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weatherobservable/WeatherStationHeatIndex.java

src/headfirst/observer/weatherobservable/CurrentConditionsDisplay.class: src/headfirst/observer/weatherobservable/CurrentConditionsDisplay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weatherobservable/CurrentConditionsDisplay.java

src/headfirst/observer/weatherobservable/WeatherStation.class: src/headfirst/observer/weatherobservable/WeatherStation.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weatherobservable/WeatherStation.java

src/headfirst/observer/weatherobservable/HeatIndexDisplay.class: src/headfirst/observer/weatherobservable/HeatIndexDisplay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weatherobservable/HeatIndexDisplay.java

src/headfirst/observer/weatherobservable/ForecastDisplay.class: src/headfirst/observer/weatherobservable/ForecastDisplay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weatherobservable/ForecastDisplay.java

src/headfirst/observer/weatherobservable/StatisticsDisplay.class: src/headfirst/observer/weatherobservable/StatisticsDisplay.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weatherobservable/StatisticsDisplay.java

src/headfirst/observer/weatherobservable/WeatherData.class: src/headfirst/observer/weatherobservable/WeatherData.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/observer/weatherobservable/WeatherData.java

src/headfirst/proxy/javaproxy/OwnerInvocationHandler.class: src/headfirst/proxy/javaproxy/OwnerInvocationHandler.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/javaproxy/OwnerInvocationHandler.java

src/headfirst/proxy/javaproxy/NonOwnerInvocationHandler.class: src/headfirst/proxy/javaproxy/NonOwnerInvocationHandler.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/javaproxy/NonOwnerInvocationHandler.java

src/headfirst/proxy/javaproxy/MatchMakingTestDrive.class: src/headfirst/proxy/javaproxy/MatchMakingTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/javaproxy/MatchMakingTestDrive.java

src/headfirst/proxy/javaproxy/PersonBean.class: src/headfirst/proxy/javaproxy/PersonBean.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/javaproxy/PersonBean.java

src/headfirst/proxy/javaproxy/PersonBeanImpl.class: src/headfirst/proxy/javaproxy/PersonBeanImpl.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/javaproxy/PersonBeanImpl.java

src/headfirst/proxy/gumball/GumballMachine.class: src/headfirst/proxy/gumball/GumballMachine.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/GumballMachine.java

src/headfirst/proxy/gumball/GumballMonitorTestDrive.class: src/headfirst/proxy/gumball/GumballMonitorTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/GumballMonitorTestDrive.java

src/headfirst/proxy/gumball/GumballMachineRemote.class: src/headfirst/proxy/gumball/GumballMachineRemote.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/GumballMachineRemote.java

src/headfirst/proxy/gumball/SoldOutState.class: src/headfirst/proxy/gumball/SoldOutState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/SoldOutState.java

src/headfirst/proxy/gumball/NoQuarterState.class: src/headfirst/proxy/gumball/NoQuarterState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/NoQuarterState.java

src/headfirst/proxy/gumball/State.class: src/headfirst/proxy/gumball/State.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/State.java

src/headfirst/proxy/gumball/GumballMonitor.class: src/headfirst/proxy/gumball/GumballMonitor.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/GumballMonitor.java

src/headfirst/proxy/gumball/GumballMachineTestDrive.class: src/headfirst/proxy/gumball/GumballMachineTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/GumballMachineTestDrive.java

src/headfirst/proxy/gumball/HasQuarterState.class: src/headfirst/proxy/gumball/HasQuarterState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/HasQuarterState.java

src/headfirst/proxy/gumball/SoldState.class: src/headfirst/proxy/gumball/SoldState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/SoldState.java

src/headfirst/proxy/gumball/WinnerState.class: src/headfirst/proxy/gumball/WinnerState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumball/WinnerState.java

src/headfirst/proxy/virtualproxy/ImageProxyTestDrive.class: src/headfirst/proxy/virtualproxy/ImageProxyTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/virtualproxy/ImageProxyTestDrive.java

src/headfirst/proxy/virtualproxy/ImageProxy.class: src/headfirst/proxy/virtualproxy/ImageProxy.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/virtualproxy/ImageProxy.java

src/headfirst/proxy/virtualproxy/ImageComponent.class: src/headfirst/proxy/virtualproxy/ImageComponent.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/virtualproxy/ImageComponent.java

src/headfirst/proxy/gumballmonitor/GumballMachine.class: src/headfirst/proxy/gumballmonitor/GumballMachine.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/GumballMachine.java

src/headfirst/proxy/gumballmonitor/SoldOutState.class: src/headfirst/proxy/gumballmonitor/SoldOutState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/SoldOutState.java

src/headfirst/proxy/gumballmonitor/NoQuarterState.class: src/headfirst/proxy/gumballmonitor/NoQuarterState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/NoQuarterState.java

src/headfirst/proxy/gumballmonitor/State.class: src/headfirst/proxy/gumballmonitor/State.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/State.java

src/headfirst/proxy/gumballmonitor/GumballMonitor.class: src/headfirst/proxy/gumballmonitor/GumballMonitor.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/GumballMonitor.java

src/headfirst/proxy/gumballmonitor/GumballMachineTestDrive.class: src/headfirst/proxy/gumballmonitor/GumballMachineTestDrive.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/GumballMachineTestDrive.java

src/headfirst/proxy/gumballmonitor/HasQuarterState.class: src/headfirst/proxy/gumballmonitor/HasQuarterState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/HasQuarterState.java

src/headfirst/proxy/gumballmonitor/SoldState.class: src/headfirst/proxy/gumballmonitor/SoldState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/SoldState.java

src/headfirst/proxy/gumballmonitor/WinnerState.class: src/headfirst/proxy/gumballmonitor/WinnerState.java
	$(JAVAC) $(JAVAC_FLAGS) $(CLASSES_ARG) src/headfirst/proxy/gumballmonitor/WinnerState.java



import "dart:io";
import "package:untitled/cardealership.dart";

void main() {
  // Sem bílagaur verð ég að hafa fleiri undirflokka, lét gbt sækja litina.
  var cars = [
    Car(id: 1, make: "Toyota", model: "Yaris"),
    Car(id: 2, make: "Toyota", model: "Supra"),
    Car(id: 3, make: "Toyota", model: "Tundra"),
    Car(id: 4, make: "Toyota", model: "BZ"),
    Car(id: 5, make: "Volvo", model: "XC40"),
    Car(id: 6, make: "Volvo", model: "S60"),
    Car(id: 7, make: "Volvo", model: "V60"),
    Car(id: 8, make: "Volvo", model: "XC90"),
    Car(id: 9, make: "Subaru", model: "Legacy"),
    Car(id: 10, make: "Subaru", model: "Outback"),
    Car(id: 11, make: "Subaru", model: "Forester"),
    Car(id: 12, make: "Subaru", model: "Impreza wrx sti csi fbi nsa"),
    Car(id: 13, make: "Mercedes", model: "OMG,ný týpa, mjög exclusive"),
    Car(id: 14, make: "Mercedes", model: "E500"),
    Car(id: 15, make: "Mercedes", model: "CL-35 AMG"),
    Car(id: 16, make: "Mercedes", model: "Wagon AMG"),
    Car(id: 17, make: "Jaguar", model: "X-Type"),
    Car(id: 18, make: "Jaguar", model: "F-Type"),
    Car(id: 19, make: "Jaguar", model: "XE"),
    Car(id: 20, make: "Jaguar", model: "XF",)

  ];

  var dealership = CarDealership(id: 1, name: "Hjalti´s Auto World", cars: cars);

  dealership.showInventory();

  bool continueSearch = true;

  while (continueSearch) {
    print("\nEnter the make and model of the car you're looking for:");
    print("Make:");
    String? make = stdin.readLineSync();
    print("Model:");
    String? model = stdin.readLineSync();

    if (make != null && model != null) {
      List<Car> foundCars = dealership.findCar(make, model);

      if (foundCars.isNotEmpty) {
        print("We found the following car(s) matching your search:");
        for (Car car in foundCars) {
          print("${car.toString()} with ID: ${car.id}");
        }

        print("Would you like to see the color options for these cars? (yes/no)");
        String? colorChoice = stdin.readLineSync();

        if (colorChoice?.toLowerCase() == "yes") {
          for (Car car in foundCars) {
            print("Colors available for ${car.make} ${car.model} (ID: ${car.id}):");
            showCarColors(car.id);
          }
        }
        continueSearch = false;
      } else {
        print("Sorry, we couldn't find any cars matching your search.");
      }
    }

    if (continueSearch) {
      print("Do you want to try again? (yes/no)");
      String? answer = stdin.readLineSync();
      continueSearch = answer?.toLowerCase() == 'yes';
    }
  }
}
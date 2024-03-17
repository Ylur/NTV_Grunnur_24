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

  var dealership = CarDealership(
      id: 1, name: "Dart´s Auto World", cars: cars);

  dealership.showInventory();

  bool Search = true;

  while (Search) {
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
        print("Would you like to see the color options for the car? (yes/no)");
        String? colorChoice = stdin.readLineSync();
        if (colorChoice?.toLowerCase() == "yes") {
          Car selectedCar = foundCars.first;
          showCarColors(selectedCar.id);

          print("Enter the number of the color you want:");
          String? colorIndexInput = stdin.readLineSync();
          int? colorIndex = int.tryParse(colorIndexInput ?? '');

          List<String>? colors = carColors[selectedCar.id];
          if (colorIndex != null && colors != null && colorIndex > 0 && colorIndex <= colors.length) {
            print("You have chosen the color: ${colors[colorIndex - 1]}");
          } else {
            print("Invalid color selection.");
          }


// Sækja hérna litina sem eru í boði fyrir bílinn sem er valinn
          // prufa quota map int og fá id á lit þannig

          }

          if (Search) {
            print("Do you want to choose another car ? (yes/no)");
            String? answer = stdin.readLineSync();
            Search = answer?.toLowerCase() == 'yes';
          }
        }
      }
    }
  }


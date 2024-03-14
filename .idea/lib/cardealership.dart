import 'dart:io';

class Car {
  int id;
  String make;
  String model;

  Car({
    required this.id,
    required this.make,
    required this.model
  });

  @override
  String toString() {
    return '$make $model';
  }
}

class CarDealership {
  int id;
  String name;
  List<Car> cars;

  CarDealership({
    required this.id,
    required this.name,
    required this.cars
  });

  void showInventory() {
    print("Welcome to $name! Here is our current inventory:");
    for (var car in cars) {
      print("${car.id}: ${car.toString()}");
    }
    print("________________");
  }

  List<Car> findCar(String make, String model) {
    return cars.where((car) => car.make.toLowerCase() == make.toLowerCase() && car.model.toLowerCase() == model.toLowerCase()).toList();
  }
}

// Litirnir á bílum, sótt af gbt þannig lítil ábyrgð tekin á nöfnum
Map<int, List<String>> carColors = {

  1: ["Chromium", "Icicle", "Ruby Flare Pearl"],
  2: ["Absolute Zero", "Renaissance Red 2.0", "Nitro Yellow"],
  3: ["Army Green", "Midnight Black Metallic", "Magnetic Gray Metallic"],
  4: ["Heavy Metal", "Elemental Silver Metallic", "Supersonic Red"],
  5: ["Fusion Red Metallic", "Thunder Grey Metallic", "Crystal White Pearl"],
  6: ["Pebble Grey Metallic", "Denim Blue Metallic", "Fusion Red Metallic"],
  7: ["Pine Grey Metallic", "Birch Light Metallic", "Onyx Black Metallic"],
  8: ["Luminous Sand Metallic", "Ice White", "Onyx Black Metallic"],
  9: ["Crimson Red Pearl", "Magnetite Gray Metallic", "Abyss Blue Pearl"],
  10: ["Autumn Green Metallic", "Crystal Black Silica", "Crimson Red Pearl"],
  11: ["Horizon Blue Pearl", "Jasper Green Metallic", "Sepia Bronze Metallic"],
  12: ["Rally Blue", "Orange", "Black"],
  13: ["Iridium Silver", "Obsidian Black", "Polar White"],
  14: ["Selenite Grey", "Designo Diamond White", "Mojave Silver"],
  15: ["Mountain Grey", "Night Black", "Denim Blue"],
  16: ["Brilliant Blue", "Graphite Grey", "Lunar Blue"],
  17: ["Ebony Black", "Indigo Blue", "Liquid Silver"],
  18: ["Santorini Black", "Fuji White", "Caldera Red"],
  19: ["Portofino Blue", "Eiger Grey", "Firenze Red"],
  20: ["Carpathian Grey", "Yulong White", "Narvik Black"],

};


void showCarColors(int carId) {
  List<String>? colors = carColors[carId];
  if (colors != null) {
    for (int i = 0; i < colors.length; i++) {
      print("${i + 1}. ${colors[i]}");
    }
  } else {
    print("No colors found for car ID $carId.");
  }
}

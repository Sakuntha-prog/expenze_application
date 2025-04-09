//enum for expence catagories

enum Expencecatagories { food, transport, health, shoping, subscriptions }

//map for the chatagory images
final Map<Expencecatagories, String> ExpencecatagoriesImages = {
  Expencecatagories.food: "assets/images/restaurant.png",
  Expencecatagories.transport: "assets/images/car.png",
  Expencecatagories.health: "assets/images/health.png",
  Expencecatagories.shoping: "assets/images/bag.png",
  Expencecatagories.subscriptions: "assets/images/bill.png",
};

class ExpenceModel {
  final int id;
  final String title;
  final double amount;
  final Expencecatagories catagory;
  final DateTime date;
  final DateTime time;
  final String description;

  ExpenceModel({
    required this.id,
    required this.title,
    required this.amount,
    required this.catagory,
    required this.date,
    required this.time,
    required this.description,
  });
}

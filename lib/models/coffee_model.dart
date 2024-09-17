class CoffeeModel {
  final String image;
  final String name;
  final String description;
  final double price;

  CoffeeModel({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  factory CoffeeModel.fromJson(Map<String, dynamic> json) {
    return CoffeeModel(
      image: json['image'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
    );
  }
}

List<CoffeeModel> coffeeList = [
  CoffeeModel(
    image: 'assets/images/coffee_mocha.png',
    name: 'coffee Mocha',
    description: 'Deep Foam',
    price: 4.53,
  ),
  CoffeeModel(
    image: 'assets/images/flat_white.png',
    name: 'Flat White',
    description: 'Espresso',
    price: 3.53,
  ),
  CoffeeModel(
    image: 'assets/images/latte.png',
    name: 'Latte',
    description: 'Creamy',
    price: 7.99,
  ),
  CoffeeModel(
    image: 'assets/images/coffee_mocha.png',
    name: 'Cappuccino',
    description: 'Foamy',
    price: 4.99,
  ),
  CoffeeModel(
    image: 'assets/images/latte.png',
    name: 'Latte',
    description: 'Creamy',
    price: 7.99,
  ),
  CoffeeModel(
    image: 'assets/images/coffee_mocha.png',
    name: 'Cappuccino',
    description: 'Foamy',
    price: 4.99,
  ),
  CoffeeModel(
    image: 'assets/images/latte.png',
    name: 'Latte',
    description: 'Creamy',
    price: 7.99,
  ),
  CoffeeModel(
    image: 'assets/images/coffee_mocha.png',
    name: 'Cappuccino',
    description: 'Foamy',
    price: 4.99,
  ),
];
/*
List<Map<String, dynamic>> coffeeList = [
      {
        'image': 'assets/images/coffee_mocha.png',
        'name': 'coffee Mocha',
        'description': 'Deep Foam',
        'price': 4.53,
      },
      {
        'image': 'assets/images/flat_white.png',
        'name': 'Flat White',
        'description': 'Espresso',
        'price': 3.53,
      },
      {
        'image': 'assets/images/latte.png',
        'name': 'Latte',
        'description': 'Creamy',
        'price': 7.99,
      },
      {
        'image': 'assets/images/coffee_mocha.png',
        'name': 'Cappuccino',
        'description': 'Foamy',
        'price': 4.99,
      },
    ];
   
*/
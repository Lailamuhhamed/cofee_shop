/*
{
        "id": 1,
        "name": "Flat White",
        "image": "http://coffeeapp.somee.com/Images/photo_2024-09-14_19-13-04.jpg",
        "price": 3.53,
        "category": {
            "id": 3,
            "name": "Espresso"
        }
    },
*/

class CoffeeModel {
  final int? id;
  final String image;
  final String name;
  final String description;
  final double price;

  CoffeeModel({
    this.id,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  factory CoffeeModel.fromJson(Map<String, dynamic> json) {
    return CoffeeModel(
      id: json['id'],
      image: json['image'],
      name: json['name'],
      description: json['name'],
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

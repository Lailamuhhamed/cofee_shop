import 'package:flutter/material.dart';
import 'CategoryChip.dart';
import 'CoffeeCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> coffeeList = [
      {
        'image': 'assets/images/cafee_mocha.png',
        'name': 'Caffe Mocha',
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
        'image': 'assets/images/cafee_mocha.png',
        'name': 'Cappuccino',
        'description': 'Foamy',
        'price': 4.99,
      },
    ];
    return Scaffold(
      body: Stack(
        children: [
          // Background Color
          Container(
            color: Colors.black,
            height: 280,
          ),
          // Main Content
          Column(
            children: [
              // AppBar
              AppBar(
                backgroundColor: Colors.black,
              ),
              // Location and Search Bar
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on, color: Colors.grey),
                        SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'location',
                              style: TextStyle(
                                  color: Color(0XFFA2A2A2), fontSize: 16),
                            ),
                            Text(
                              'Bilzen,Tanjungbalai',
                              style: TextStyle(
                                  color: Color(0XFFD8D8D8), fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search coffee',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Promo Banner
              Container(
                margin: EdgeInsets.all(16),
                child: Stack(
                  children: [
                    // Background Image
                    Positioned.fill(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          'assets/images/Banner.png', // Replace with your asset
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Text Content
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(12)),
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            child: Text('Promo',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                          ),
                          SizedBox(height: 8),
                          Container(
                            color: Colors.black,
                            padding: const EdgeInsets.symmetric(
                                vertical: 4, horizontal: 8),
                            child: Text(
                              'Buy one get one FREE',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Categories and Coffee List
              Expanded(
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CategoryChip(label: 'All Coffee'),
                              SizedBox(width: 8),
                              CategoryChip(label: 'Macchiato'),
                              SizedBox(width: 8),
                              CategoryChip(label: 'Latte'),
                              SizedBox(width: 8),
                              CategoryChip(label: 'Americano'),
                              SizedBox(width: 8),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                        childAspectRatio: 0.75,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return CoffeeCard(
                            image: coffeeList[index]['image'],
                            name: coffeeList[index]['name'],
                            description: coffeeList[index]['description'],
                            price: coffeeList[index]['price'],
                          );
                        },
                        childCount: coffeeList.length,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0XFFC67C4E),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
      ),
    );
  }
}

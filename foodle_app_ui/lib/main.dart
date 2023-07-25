import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Foodle(),
    );
  }
}

class Foodle extends StatelessWidget {
  Foodle({super.key});

  final List<String> iconImages = [
    'assets/burger_icon.jpg',
    'assets/pizza_icon.jpg',
    'assets/sandwich_icon.jpg',
    'assets/pastry_icon.jpg',
  ];

  final List<String> itemTitle = [
    'Burger',
    'Pizza',
    'Sandwich',
    'Pastry',
  ];
  final List<String> itemSubtitle = [
    'Juicy Big Mac',
    'Extra Cheesy',
    'Pure Vegetarian',
    'Creamy & delish',
  ];
  final List<String> itemImage = [
    'assets/burger.jpg',
    'assets/pizza.jpg',
    'assets/sandwich.jpg',
    'assets/pastry.jpg',
  ];
  final List<String> itemPrice = [
    '100',
    '200',
    '150',
    '250',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: const Text(
          "Foodle",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pink,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              // SEARCH CONTAINER
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Row(
                  children: [Icon(Icons.search), Text('Search')],
                ),
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              // CATEGORIES TEXT
        
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              // CATEGORIES CARDS
              SizedBox(
                height: 70,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: iconImages.length,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          iconImages[index],
                          height: 30,
                          width: 50,
                        ),
                      );
                    }),
              ),
        
              const SizedBox(
                height: 20,
              ),
        
              // POPULAT TEXT
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              // HORIZONTAL SCROLLABLE ITEM CARDS
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: itemTitle.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                itemImage[index],
                                height: 100,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                itemTitle[index],
                                style: const TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                itemSubtitle[index],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Rs. ${itemPrice[index]}',
                                  ),
                                  const SizedBox(
                                    width: 100,
                                  ),
                                  const Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 10,),
        
              // NEWEST SECTION TEXT
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  'Newest',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
        
              // VERTICAL SCROLLABLE ITEMS LIST
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: itemTitle.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 6,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        children: [
                          Image.asset(
                            itemImage[index],
                            height: 100,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                itemTitle[index],
                                style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(itemSubtitle[index]),
                              Text('Rs. ${itemPrice[index]}'),
                            ],
                          ),
                          const SizedBox(width: 130,),
                          const Icon(Icons.favorite, color: Colors.red,),
                        ],
                      ),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, dynamic>> categories = const [
    {'icon': Icons.devices, 'title': 'Electronic'},
    {'icon': Icons.fastfood, 'title': 'Food & Drink'},
    {'icon': Icons.watch, 'title': 'Accessories'},
    {'icon': Icons.brush, 'title': 'Beauty'},
    {'icon': Icons.chair, 'title': 'Furniture'},
    {'icon': Icons.shopping_bag, 'title': 'Fashion'},
    {'icon': Icons.favorite, 'title': 'Health'},
    {'icon': Icons.edit, 'title': 'Stationary'},
  ];

  final List<Map<String, String>> flashSale = const [
    {'image': 'https://via.placeholder.com/150', 'name': 'iPad Pro'},
    {'image': 'https://via.placeholder.com/150', 'name': 'Apple Watch'},
    {'image': 'https://via.placeholder.com/150', 'name': 'AirPods'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopiCo'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Find you need',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(height: 16),

          const Row(
            children: [
              Icon(Icons.location_on, color: Colors.deepOrangeAccent),
              SizedBox(width: 8),
              Text('Deliver to No.801A, Wall Street, USA'),
            ],
          ),
          const SizedBox(height: 16),

          GridView.builder(
            itemCount: categories.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              final item = categories[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.deepOrangeAccent.withOpacity(0.1),
                    child: Icon(item['icon'], color: Colors.deepOrangeAccent),
                  ),
                  const SizedBox(height: 8),
                  Text(item['title'], textAlign: TextAlign.center),
                ],
              );
            },
          ),
          const SizedBox(height: 24),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Arrivals',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.deepOrangeAccent,
                        ),
                      ),
                      child: Text('Shop Now'),
                    ),
                  ],
                ),
                Image.network(
                  'https://via.placeholder.com/100x100',
                  height: 80,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Flash Sale',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text('See all', style: TextStyle(color: Colors.deepOrangeAccent)),
            ],
          ),
          const SizedBox(height: 12),

          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: flashSale.length,
              itemBuilder: (context, index) {
                final item = flashSale[index];
                return Container(
                  width: 150,
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Image.network(item['image']!, fit: BoxFit.cover),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          item['name']!,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.deepOrangeAccent,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Transaction",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}

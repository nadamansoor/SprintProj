import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
 
    final List<Map<String, String>> products = [
      {"title": "Shoes", "image": "https://picsum.photos/200?1"},
      {"title": "Bag", "image": "https://picsum.photos/200?2"},
      {"title": "Watch", "image": "https://picsum.photos/200?3"},
      {"title": "T-Shirt", "image": "https://picsum.photos/200?4"},
    ];

    final List<Map<String, String>> offers = [
      {"title": "50% off on Shoes", "image": "https://picsum.photos/300?1"},
      {"title": "Buy 1 Get 1 Free", "image": "https://picsum.photos/300?2"},
      {"title": "30% off on Bags", "image": "https://picsum.photos/300?3"},
      {"title": "Hot Deal on Watches", "image": "https://picsum.photos/300?4"},
      {"title": "Sale on T-Shirts", "image": "https://picsum.photos/300?5"},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Products"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(
              height: 180,
              child: PageView(
                children: products
                    .map((p) => Image.network(p["image"]!, fit: BoxFit.cover))
                    .toList(),
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true, 
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    child: Column(
                      children: [
                        Expanded(
                          child: Image.network(
                            products[index]["image"]!,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(products[index]["title"]!),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_shopping_cart),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                    "${products[index]["title"]} added to the cart"),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

           
            const Text(
              "Hot Offers",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: offers.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.network(
                          offers[index]["image"]!,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(offers[index]["title"]!),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

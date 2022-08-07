import 'package:flutter/material.dart';
import 'package:griter/models/product_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final products = [
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
    const Product(imageUrl: "assets/image2.png", name: "Yeni Urunler"),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.deepPurple.shade600,
        titleSpacing: 120,
        title: Text(
          "giter",
          style: TextStyle(color: Colors.yellow.shade700),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 60,
            color: Colors.brown,
            child: Row(
              children: [
                Container(
                  width: 220,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Teslimat Adresi Belirleyin",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text(
                        "TVS",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "10dk",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Image.asset(
            "assets/image1.png",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Container(
            height: 400,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0,vertical: 16),
              child: GridView.builder(
                itemCount: products.length,
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (itemWidth / itemHeight),
                    crossAxisCount: 4,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 1.0),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox(
                            child: Image.asset(
                          products[index].imageUrl,
                        )),
                      ),
                     const SizedBox(
                        height: 2,
                      ),
                      Text(
                        products[index].name,
                        style: const TextStyle(fontSize: 10,color: Colors.white),
                      )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:griter/models/paper_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final paper = [
    const Paper(imageUrl: "assets/image3.png", price: "100"),
    const Paper(imageUrl: "assets/image3.png", price: "100"),
    const Paper(imageUrl: "assets/image3.png", price: "100"),
    const Paper(imageUrl: "assets/image3.png", price: "100"),
    const Paper(imageUrl: "assets/image3.png", price: "100"),
    const Paper(imageUrl: "assets/image3.png", price: "100"),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight - 20) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        backgroundColor: Colors.deepPurple.shade600,
        titleSpacing: 60,
        title: const Text(
          "Urunler",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 60,
            color: Colors.deepPurple.shade500,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Ev Bikram",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Ev Bikram",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Ev Bikram",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Ev Bikram",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Ev Bikram",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Ev Bikram",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                      child: Text(
                    "Ev Bikram",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      "Gazate & Dergi",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      "Gazate & Dergi",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      "Pil",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      "Mutfak",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Center(
                        child: Text(
                      "Giyim",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 400,
            color: Colors.black,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
              child: GridView.builder(
                itemCount: paper.length,
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: (itemWidth / itemHeight),
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 1.0),
                itemBuilder: (BuildContext context, int index) {
                  return Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(
                            paper[index].imageUrl,
                            height: 86,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "\$ ${paper[index].price}",
                            style: const TextStyle(
                                fontSize: 10, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                            child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )),
                      ),
                    )
                  ]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_healthy_shop_ui/model/product.dart';

import 'detail_screen.dart';

class OverViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Product> product = [
      Product(
        id: 1,
        title: 'Pitch',
        image: 'pi.png',
        cat: 'Fruit',
        price: 14.99,
        description:
            'The natural antioxidants in fruits and vegetables help keep your body working at its best, so consuming a diet that meets your daily recommended amount of fruits and vegetables is one of the best ways to give your body a strong defense against disease.',
        point: '4.2',
      ),
      Product(
        id: 2,
        title: 'Banana',
        image: 'ba.png',
        cat: 'Fruit',
        price: 20.55,
        description:
            'The natural antioxidants in fruits and vegetables help keep your body working at its best, so consuming a diet that meets your daily recommended amount of fruits and vegetables is one of the best ways to give your body a strong defense against disease.',
        point: '3.5',
      ),
      Product(
        id: 3,
        title: 'Kiwi',
        image: 'ke.png',
        cat: 'Fruit',
        price: 10.0,
        description:
            'The natural antioxidants in fruits and vegetables help keep your body working at its best, so consuming a diet that meets your daily recommended amount of fruits and vegetables is one of the best ways to give your body a strong defense against disease.',
        point: '5.0',
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width - 80,
                          child: Text(
                            'Welcome',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 80,
                          child: Text(
                            'Mehrab Bozorgi',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Image.asset(
                        'person.png',
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 120, top: 8, bottom: 8),
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            Icon(
                              Icons.search_rounded,
                              color: Colors.grey[400],
                              size: 30,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Search Grocery',
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.green[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(
                          Icons.table_rows_rounded,
                          color: Colors.green[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Card(
                      elevation: 5,
                      color: Colors.green[200],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          'All',
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    titleWidget(text: 'Fruit'),
                    titleWidget(text: 'Vegetable'),
                    titleWidget(text: 'Meat'),
                    titleWidget(text: 'Dairy'),
                    titleWidget(text: 'Juice'),
                    titleWidget(text: 'Water'),
                    titleWidget(text: 'Rice'),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: product.length,
                  itemBuilder: (context, index) => OverView_Item(
                    product: product,
                    index: index,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Text(
                  'Recent Shop',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'ke.png',
                              width: 75,
                              height: 75,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 100,
                                  margin: EdgeInsets.only(left: 20, top: 5),
                                  child: Text(
                                    'Kiwi',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  margin: EdgeInsets.only(left: 20, top: 5),
                                  child: Text(
                                    'Fruit',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Text(
                          '\$10.99',
                          style: TextStyle(
                            color: Colors.green[600],
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class OverView_Item extends StatelessWidget {
  const OverView_Item({
    required this.product,
    required this.index,
  });

  final List<Product> product;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 220,
      height: 260,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailScreen(
                product: product[index],
              ),
            ),
          );
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Image.asset(
                  product[index].image,
                  height: 130,
                  width: 150,
                  fit: BoxFit.scaleDown,
                ),
                Container(
                  width: double.infinity,
                  child: Text(
                    product[index].title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 120,
                          child: Text(
                            product[index].cat,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          width: 120,
                          child: Text(
                            '\$' + product[index].price.toString(),
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.green[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Card(
                      color: Colors.orange,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class titleWidget extends StatelessWidget {
  final String text;

  const titleWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

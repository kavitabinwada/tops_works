import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Model_Ass61_1.dart';

final List<Data> Posts = [
  Data(
      image: AssetImage('assets/images/foodA1.jpeg'),
      text: ('Vegetables And Poached Egg'),
      rating: 3.3,
      price: 19.13),
  Data(
      image: AssetImage('assets/images/foodA2.jpeg'),
      text: ('Avocado Salad'),
      rating: 3.3,
      price: 14.50),
  Data(
      image: AssetImage('assets/images/foodA3.jpeg'),
      text: ('Pancakes with Simple salad'),
      rating: 3.3,
      price: 13.50),
  Data(
      image: AssetImage('assets/images/foodA4.jpeg'),
      text: ('Vegetables'),
      rating: 3.3,
      price: 16.30)
];

class Ass61 extends StatefulWidget {
  @override
  State<Ass61> createState() => _Ass61State();
}

class _Ass61State extends State<Ass61> {
  int selectedNavbarIndex = 0;

  List _widgetList = [
    MenuScreen(),
    AccountScreen(),
    CartScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetList[selectedNavbarIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        currentIndex: selectedNavbarIndex,
        onTap: (value) {
          setState(() {
            selectedNavbarIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
              label: ('Menu'), icon: Icon(Icons.menu_outlined)),
          BottomNavigationBarItem(
              label: ('Account'), icon: Icon(Icons.girl_outlined)),
          BottomNavigationBarItem(
              label: ('Cart'), icon: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    Text(
                      'Menu',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.filter_alt_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Badge(
                        label: Text('2'),
                        child: IconButton(
                            padding: EdgeInsets.all(0),
                            onPressed: () {
                              _showBottomSheet(context);
                            },
                            icon: Icon(Icons.shopping_bag_outlined)))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 14,
                  ),
                  color: Colors.grey.shade200,
                  height: 23,
                  width: 85,
                  child: Text('Kaza'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 14,
                  ),
                  color: Colors.yellow,
                  height: 23,
                  width: 85,
                  child: Text('msman'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 14,
                  ),
                  color: Colors.grey.shade200,
                  height: 23,
                  width: 85,
                  child: Text('Tanuki'),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 14,
                  ),
                  color: Colors.grey.shade200,
                  height: 23,
                  width: 85,
                  child: Text('Gastro'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'All',
                  style: TextStyle(
                      fontWeight: FontWeight.w800, color: Colors.black),
                ),
                SizedBox(width: 20),
                Text(
                  'Salad',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 20),
                Text('Pizza', style: TextStyle(color: Colors.grey)),
                SizedBox(width: 20),
                Text('Aam', style: TextStyle(color: Colors.grey)),
                SizedBox(width: 20),
                Text('Burger', style: TextStyle(color: Colors.grey)),
                SizedBox(width: 20),
                Text('Dessert', style: TextStyle(color: Colors.grey)),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.63,
              child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: Posts.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                            width: 200,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.orange,
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: Posts[index].image,
                                  fit: BoxFit.cover,
                                ))),
                        SizedBox(
                          height: 20,
                        ),
                        Text('${Posts[index].text}'),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            RatingBar.builder(
                                initialRating: Posts[index].rating,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 20,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                }),
                            Text(
                              '(29)',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        SizedBox(height: 5),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${Posts[index].price}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add),
                                style: IconButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    backgroundColor: Colors.amber),
                              )
                            ],
                          ),
                        )
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 18, left: 20),
                  child: Text(
                    'Your Order',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w900),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
              ],
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chicken Burger',
                                style: TextStyle(
                                    fontSize: 19, fontWeight: FontWeight.w800),
                              ),
                              Text(
                                '\$250 g',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          Text(
                            '\$7.00',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Avocado Salad',
                            style: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.w800),
                          ),
                          Text(
                            '350 g',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      Text(
                        '\$5.22',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total:',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '\$12.22',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
            ),
            FilledButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.amber),
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 100, vertical: 14))),
              onPressed: () {},
              child: Text(
                'Add to Cart',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          appBar(),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 19),
                  child: Text(
                    'Cart',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19.0),
                  child: Text('Thu, 6th of June'),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  margin: EdgeInsets.only(left: 19),
                  width: 120,
                  child: TextButton(
                    style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.all(0))),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.add),
                        Text('Add to order'),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: ListView(
                    itemExtent: 100,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.deepPurple,
                                  image: DecorationImage(
                                      image: Posts[0].image,
                                      fit: BoxFit.fitWidth)),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  Posts[0].text,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  '-  3  +',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            )),
                            Container(
                              child: Column(
                                children: [
                                  Text(Posts[0].price.toString()),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    child: FilledButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.amber),
                                            padding: MaterialStatePropertyAll(
                                                EdgeInsets.all(0)),
                                            shape: MaterialStatePropertyAll(
                                                ContinuousRectangleBorder())),
                                        onPressed: () {},
                                        child: Icon(
                                            Icons.delete_forever_outlined)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.deepPurple,
                                  image: DecorationImage(
                                      image: Posts[1].image,
                                      fit: BoxFit.fitWidth)),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  Posts[1].text,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  '-  1  +',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            )),
                            Container(
                              child: Column(
                                children: [
                                  Text(Posts[1].price.toString()),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    child: FilledButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.amber),
                                            padding: MaterialStatePropertyAll(
                                                EdgeInsets.all(0)),
                                            shape: MaterialStatePropertyAll(
                                                ContinuousRectangleBorder())),
                                        onPressed: () {},
                                        child: Icon(
                                            Icons.delete_forever_outlined)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.deepPurple,
                                  image: DecorationImage(
                                      image: Posts[2].image,
                                      fit: BoxFit.fitWidth)),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  Posts[2].text,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  '-  2  +',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            )),
                            Container(
                              child: Column(
                                children: [
                                  Text(Posts[2].price.toString()),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    child: FilledButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.amber),
                                            padding: MaterialStatePropertyAll(
                                                EdgeInsets.all(0)),
                                            shape: MaterialStatePropertyAll(
                                                ContinuousRectangleBorder())),
                                        onPressed: () {},
                                        child: Icon(
                                            Icons.delete_forever_outlined)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.symmetric(horizontal: 19),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: Colors.deepPurple,
                                  image: DecorationImage(
                                      image: Posts[3].image,
                                      fit: BoxFit.fitWidth)),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Text(
                                  Posts[3].text,
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  height: 9,
                                ),
                                Text(
                                  '-  3  +',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            )),
                            Container(
                              child: Column(
                                children: [
                                  Text(Posts[3].price.toString()),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    child: FilledButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.amber),
                                            padding: MaterialStatePropertyAll(
                                                EdgeInsets.all(0)),
                                            shape: MaterialStatePropertyAll(
                                                ContinuousRectangleBorder())),
                                        onPressed: () {},
                                        child: Icon(
                                            Icons.delete_forever_outlined)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 10),
                                child: Text(
                                  'Total',
                                  style: TextStyle(
                                      fontSize: 23, color: Colors.grey),
                                )),
                            Text(
                              '\$45.76',
                              style: TextStyle(
                                fontSize: 23,
                              ),
                            ),
                          ],
                        ),
                        FilledButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.amber),
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 14))),
                          onPressed: () {},
                          child: Text(
                            'Checkout',
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  appBar() {
    return SafeArea(
      child: Container(
        alignment: Alignment.centerLeft,
        height: 60,
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Account screen'),
    );
  }
}

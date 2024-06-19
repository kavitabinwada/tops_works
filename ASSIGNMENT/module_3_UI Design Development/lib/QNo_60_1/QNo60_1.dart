import 'package:flutter/material.dart';
import '../Question_60/question_60_Screen_2.dart';

class Ass60_1 extends StatefulWidget {
  @override
  State<Ass60_1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Ass60_1> {
  List<String> Productlist = [
    'Recommend',
    'Popular',
    'Pizza',
    'Pasta',
    'Burger',
    'Sandwich'
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Center(
          child: Container(
              child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Restaurant',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(2),
                                        color: Colors.grey,
                                        height: 23,
                                        width: 70,
                                        child: Text('20-30min'),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text('2.4km'),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text('Restaurant'),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 85,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      child: Image(
                                          image: AssetImage(
                                              'assets/images/R_image1.png')))
                                ],
                              ),
                            ]),
                        SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Orange Sndwiches is delicious',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star_outline,
                                  color: Colors.amber,
                                  size: 25,
                                ),
                                Text(
                                  '4.7',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 40,
                          child: ListView.builder(
                            itemCount: Productlist.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      select = index;
                                    });
                                  },
                                  child: Card(
                                    color: select == index
                                        ? Colors.amber
                                        : Colors.white,
                                    child: Center(
                                      child: Text('${Productlist[index]}'),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 350,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 100,
                                child: Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CircleAvatar(
                                          radius: 60,
                                          backgroundImage: AssetImage(
                                              'assets/images/junkfood2.jpeg'),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Soba Soup',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'No 1 in Select',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.amber),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              '\$12',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            )
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Ass60_2(),
                                                  ));
                                            },
                                            icon: Icon(Icons
                                                .arrow_forward_ios_rounded))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                child: Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CircleAvatar(
                                          radius: 60,
                                          backgroundImage: AssetImage(
                                              'assets/images/junkfood3.jpeg'),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Sei Ua Samun Phai',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'No 1 in Select',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.amber),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              '\$12',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            )
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Ass60_2(),
                                                  ));
                                            },
                                            icon: Icon(Icons
                                                .arrow_forward_ios_rounded))
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 100,
                                child: Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CircleAvatar(
                                          radius: 60,
                                          backgroundImage: AssetImage(
                                              'assets/images/junkfood4.jpeg'),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Ratatoullie Pasta',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(height: 5),
                                            Text(
                                              'No 1 in Select',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.amber),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              '\$12',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14),
                                            )
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Ass60_2(),
                                                  ));
                                            },
                                            icon: Icon(Icons
                                                .arrow_forward_ios_rounded))
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ])))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_bag_outlined),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(30)),
        backgroundColor: Colors.amber,
      ),
    );
  }
}

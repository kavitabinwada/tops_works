import 'package:flutter/material.dart';

class Ass60_2 extends StatefulWidget {
  @override
  State<Ass60_2> createState() => _Q60Screen2State();
}

class _Q60Screen2State extends State<Ass60_2> {
  int price = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border))
        ],
      ),
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          margin: EdgeInsets.only(top: 80),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Positioned(
                  top: -50,
                  child: CircleAvatar(
                    radius: 80,
                    backgroundImage: AssetImage('assets/images/food1.jpeg'),
                  )),
              Container(
                margin: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Column(
                        children: [
                          Text(
                            'Sei Ua Samun Phrai',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.timer_outlined,
                                    color: Colors.blueAccent,
                                  ),
                                  Text(
                                    ('50min'),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  Text('4.8')
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.local_fire_department_outlined,
                                    color: Colors.redAccent,
                                  ),
                                  Text('325 Kcal')
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                elevation: 0,
                                color: Colors.grey.shade300,
                                child: Row(
                                  children: [
                                    Text(
                                      '\$$price',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 25),
                                    ),
                                    Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      color: Colors.amber,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 40,
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                '-',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              ),
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 25,
                                            child: Text('1'),
                                          ),
                                          SizedBox(
                                            width: 40,
                                            child: TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                '+',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 25),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                'Ingredient',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ],
                          ),
                          Container(
                            height: 110,
                            width: double.infinity,
                            child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Card(
                                      elevation: 0,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.only(
                                                  bottomEnd: Radius.elliptical(
                                                      80, 100),
                                                  bottomStart:
                                                      Radius.elliptical(
                                                          80, 100),
                                                  topEnd: Radius.elliptical(
                                                      80, 100),
                                                  topStart: Radius.elliptical(
                                                      80, 100))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/noodles1.jpeg'),
                                          ),
                                          Text(('Noodles'))
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Card(
                                      elevation: 0,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.only(
                                                  bottomEnd: Radius.elliptical(
                                                      80, 100),
                                                  bottomStart:
                                                      Radius.elliptical(
                                                          80, 100),
                                                  topEnd: Radius.elliptical(
                                                      80, 100),
                                                  topStart: Radius.elliptical(
                                                      80, 100))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/prons1.jpeg'),
                                          ),
                                          Text(('Shrimp'))
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Card(
                                      elevation: 0,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.only(
                                                  bottomEnd: Radius.elliptical(
                                                      80, 100),
                                                  bottomStart:
                                                      Radius.elliptical(
                                                          80, 100),
                                                  topEnd: Radius.elliptical(
                                                      80, 100),
                                                  topStart: Radius.elliptical(
                                                      80, 100))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/egg1.jpeg'),
                                          ),
                                          Text(('Egg'))
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Card(
                                      elevation: 0,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.only(
                                                  bottomEnd: Radius.elliptical(
                                                      80, 100),
                                                  bottomStart:
                                                      Radius.elliptical(
                                                          80, 100),
                                                  topEnd: Radius.elliptical(
                                                      80, 100),
                                                  topStart: Radius.elliptical(
                                                      80, 100))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/sal1food.jpeg'),
                                          ),
                                          Text(('Scallion'))
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 80,
                                    height: 80,
                                    child: Card(
                                      elevation: 0,
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusDirectional.only(
                                                  bottomEnd: Radius.elliptical(
                                                      80, 100),
                                                  bottomStart:
                                                      Radius.elliptical(
                                                          80, 100),
                                                  topEnd: Radius.elliptical(
                                                      80, 100),
                                                  topStart: Radius.elliptical(
                                                      80, 100))),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/foodsal1.jpeg'),
                                          ),
                                          Text(('Salad'))
                                        ],
                                      ),
                                    ),
                                  )
                                ]),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text(
                                'About',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              )
                            ],
                          ),
                          Text(
                            ("Fresh Pasta is usually locally made with fresh ingredient unlesh it is destinied to be"
                                "shipped, in which case consideration is given to the spoilage rates of"
                                "the desired ingredients such as eggs or herbs. furthermore,"
                                "fresh Pasta is usually made with a mixture of eggs and all-purpose"
                                "flour or 00 low-gluten flour. Since it contains eggs"),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_bag_outlined),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: Colors.amber,
      ),
    );
  }
}

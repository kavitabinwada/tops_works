import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Ass49_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.only(top: 50),
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRh7fBw6df4CfuhwxYW1aywuUoDBW2TiQmHnvk9czXdlldVE5YvVlvP-12SWDh-5BtXkts&usqp=CAU'),
              )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Oeschinen Lake Campground',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Kanderstang Swidzeland',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.star,
                            size: 30.0,
                            color: Colors.red,
                          ),
                          Text('41'),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                  ),
                  margin: const EdgeInsets.only(top: 30),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Icon(
                          Icons.call,
                          color: Colors.blue,
                        ),
                        Text(
                          'call',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ]),
                      Column(children: [
                        Icon(
                          Icons.alt_route,
                          color: Colors.blue,
                        ),
                        Text(
                          'Route',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ]),
                      Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.blue,
                          ),
                          Text(
                            'Share',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                child: const Text('This is the very beautiful lake of '
                    'Uttrakhad which is very popular to visit and '
                    'we can say it is the tourist attraction place,'
                    'People can experience most wonderful nature with differret'
                    'location and views which is the very essential while '
                    'visiting this kind of places . every age of people can '
                    'enjoy the views as well as authentic food of Karala ')),
          ],
        ),
      )),
    );
  }
}

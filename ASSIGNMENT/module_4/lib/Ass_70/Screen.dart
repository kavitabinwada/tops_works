import 'package:flutter/material.dart';
import 'package:module_4/Ass_70/model.dart';

class Photos extends StatefulWidget {
  const Photos({super.key});

  @override
  State<Photos> createState() => _PhotosState();
}

class _PhotosState extends State<Photos> {
  List<Items> itemList = [
    Items(image: "assets/images/flower2.jpeg", color: Colors.teal.shade100),
    Items(image: "assets/images/flower3.jpeg", color: Colors.teal.shade200),
    Items(image: "assets/images/flower2.jpeg", color: Colors.teal.shade300),
    Items(image: "assets/images/flower3.jpeg", color: Colors.teal.shade400),
    Items(image: "assets/images/flower2.jpeg", color: Colors.teal.shade500),
    Items(image: "assets/images/flower3.jpeg", color: Colors.teal.shade500),
    Items(image: "assets/images/flower2.jpeg", color: Colors.teal.shade500),
    Items(image: "assets/images/flower3.jpeg", color: Colors.teal.shade500),
    Items(image: "assets/images/flower2.jpeg", color: Colors.teal.shade500),
    Items(image: "assets/images/flower3.jpeg", color: Colors.teal.shade500),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 4 / 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            mainAxisExtent: 200),
        itemCount: itemList.length,
        itemBuilder: (context, index) => Container(
          child: Image.asset(
            '${itemList[index].image}',
            fit: BoxFit.cover,
          ),
          color: itemList[index].color,
        ),
      ),
    );
  }
}

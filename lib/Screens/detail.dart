import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {

  final String image;
  final String description;
  final double price;
  
  const DetailScreen({Key? key, required this.image, required this.description, required this.price}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title: const Text('REPRESENT',style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.favorite_border),
              onPressed: () {
                const Icon(Icons.favorite);
              },
            )],
        ),
      body: Column(
        children: [
           AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: Image(image: NetworkImage(image)),
              ),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Text(
                      description,
                      style: const TextStyle(fontSize: 40),
                      ),
                  ],
                )
              ),     
              Container(
                width: double.infinity,
                height: 40,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)
                  ),
                ),
                child: TextButton(
                  onPressed: () {
                    print(price);
                  },
                  child: Text(
                    price.toString(),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      letterSpacing: 10,
                    ),
                  ),
                ),
              ),
            ]),
      );
  }
}
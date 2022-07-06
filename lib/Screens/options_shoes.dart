import 'package:flutter/material.dart';

import '../models/photoitem.dart';
import 'detail.dart';

class ShoesScreen extends StatelessWidget {
   
  ShoesScreen({Key? key}) : super(key: key);

  final List<PhotoItem> _items = [
  PhotoItem('https://m.media-amazon.com/images/I/81i057rz8gS._UL1500_.jpg', 'Sneakers for men', 350),
  PhotoItem('https://media.istockphoto.com/photos/elegant-black-leather-shoes-picture-id172417586?k=20&m=172417586&s=612x612&w=0&h=DDjvQhRgSYcH2F5rVt8iohGvkqCIteYuTCq3wpJuUi4=', 'Formal shoes for men', 500),
  PhotoItem('https://res.cloudinary.com/atoms-shoes/image/upload/q_auto,f_auto/v1649178687/products/shoes/model000/black_and_white_000_side_profile_single_-_background_f2f2f2_-_compressed_ytztl9.jpg', 'Senakers unisex, fabric material', 150),
  PhotoItem('https://cdn.shopify.com/s/files/1/0966/8928/products/WS-Web-Product-SwiftKnit-Navy-Front3Q_760x.jpg?v=1599784235', 'Formal sneakers for men', 300),
  PhotoItem('https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/mg/gm/3pp/asr/65ad4ce6-8fc5-4d05-84d5-cc531e983ecc.60b3a7504723799980e2f291e9365092.jpeg?odnHeight=2000&odnWidth=2000&odnBg=ffffff', 'Converse chuck Taylor', 50),
  PhotoItem('https://assets.adidas.com/images/w_600,f_auto,q_auto/1b4917151ab348868e4aad7a00921b60_9366/Superstar_Shoes_White_GW0570_01_standard.jpg', 'Adidas shoes Air force', 90),
  PhotoItem('https://assets.adidas.com/images/w_600,f_auto,q_auto/3d0933f855c445fea224aad600bac8b7_9366/Superstar_Shoes_White_EG4958_09_standard.jpg', 'Adidas superstar shoes classic', 100),

];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Shoes',style: TextStyle(color: Colors.black)),
          centerTitle: true,
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.grid_view),
              onPressed: () {},
            )],
        ),
        body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    image: _items[index].image,
                    description: _items[index].description,
                    price: _items[index].price
                  ),
                  )
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(_items[index].image))
              ),
            ),
            );
          },
      ),   
      );
  }
}
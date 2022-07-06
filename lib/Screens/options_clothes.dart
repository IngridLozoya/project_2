import 'package:flutter/material.dart';
import '../models/photoitem.dart';
import 'detail.dart';

class ClothesScreen extends StatelessWidget {
   
   ClothesScreen({Key? key}) : super(key: key);
  
final List<PhotoItem> _items = [
  PhotoItem('https://lomoplateado.mx/wp-content/uploads/2021/12/hoodie-blanca-1-300x300.jpg', 'Men hoodie with frontal pocket', 250),
  PhotoItem('https://i.pinimg.com/236x/41/35/19/413519a269a5ee7dd68309bac8c84a8b.jpg', 'Men hoodie with frontal pocket', 250),
  PhotoItem('https://ae01.alicdn.com/kf/HTB16UCgmYArBKNjSZFLq6A_dVXaQ/Hoddies-Rosa-bordado-mujer-moda-sudadera-blusa-rosa-Tops-negro-con-capucha-su-ter-con-cord.jpg_Q90.jpg_.webp', 'Men hoodie with frontal pocket', 300),
  PhotoItem('https://cdn.shopify.com/s/files/1/0486/3911/5432/products/unisex-eco-hoodie-black-front-60225ab79f16b_480x480.jpg?v=1612864189', 'Men hoodie with frontal pocket', 350),
  PhotoItem('https://img.joomcdn.net/8775d0a4325b03d9fe2d8dac28c4d13ae40cfdf8_original.jpeg', 'Men hoodie anime character', 400),
  PhotoItem('https://cf.shopee.com.mx/file/a250e777b3407427dcf6aaa39ac11fdc', 'Men hoodie with japanese design', 200),
  PhotoItem('https://cf.shopee.com.mx/file/71ae33d5c69da40d3b0e6514497bc842', 'Men hoodie with anime design', 150),

];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Hoddies',style: TextStyle(color: Colors.black)),
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


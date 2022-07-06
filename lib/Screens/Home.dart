import 'package:flutter/material.dart';
import 'package:project_2/Screens/options_clothes.dart';
import 'options_shoes.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REPRESENT', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            )],
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.zero,
          width: double.infinity,
          height: 280.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: .8,
              fit: BoxFit.cover, 
              image: NetworkImage('https://images.pexels.com/photos/994517/pexels-photo-994517.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
            )
            ),
            child: TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ClothesScreen()));
            },
            child: const Text('HODDIES', style: TextStyle(color: Colors.black, fontSize: 50),)
            ),
          ),
            Container(
              margin: const EdgeInsets.only(top: 30),
              //padding: EdgeInsets.zero,
          width: double.infinity,
          height: 280.0,
          decoration: const BoxDecoration(
            image: DecorationImage(
              opacity: .8,
              fit: BoxFit.cover, 
              image: NetworkImage('https://images.pexels.com/photos/609771/pexels-photo-609771.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')
            )
            ),
            child: TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ShoesScreen()));
            },
            child: const Text('SHOES', style: TextStyle(color: Colors.black, fontSize: 50),)
            ),
          ), 
          
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Text('Options', style: TextStyle(color: Colors.black),),
            ),
            ListTile(
              title: const Text('Shoes'),
              onTap: () {
                final route = MaterialPageRoute(
                    builder: ((context) => ShoesScreen()));
                Navigator.push(context, route);
              },
            ),
            ListTile(
              title: const Text('Clothes'),
              onTap: (){
                final route = MaterialPageRoute(
                    builder: ((context) => ClothesScreen()));
                Navigator.push(context, route);
              },
            )
          ],
        ),
      ),
    );
  }
}
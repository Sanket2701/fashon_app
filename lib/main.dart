import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('Fashion App'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Sanket Bafna'),
              accountEmail: Text('sanketbafna272@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
                title: Text('Home Page'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.account_circle,
                  color: Colors.red,
                ),
                title: Text('My Account'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
                title: Text('My Orders'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.category,
                  color: Colors.red,
                ),
                title: Text('Categories'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
                title: Text('Favourites'),
              ),
              onTap: () {},
            ),
            Divider(),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                leading: Icon(Icons.help),
                title: Text('About Us'),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 200.0,
            child: Carousel(
              boxFit: BoxFit.cover,
              images: [
                Image.asset('images/c1.jpg'),
                Image.asset('images/m1.jpeg'),
                Image.asset('images/m2.jpg'),
                Image.asset('images/w1.jpeg'),
                Image.asset('images/w3.jpeg'),
                Image.asset('images/w4.jpeg'),
              ],
              dotSize: 4.0,
              autoplay: true,
            ),
          )
        ],
      ),
    );
  }
}

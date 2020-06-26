import 'package:flutter/material.dart';
//import './pages/home.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
          //   Navigator.push(
          //       context, MaterialPageRoute(builder: (context) => HomePage()));
           },
        ),
        elevation: 0.0,
        title: Text('Cart'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(8.0),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: Text(
                  'Total Amount',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0),
                ),
                subtitle: Text(
                  '\$230',
                  style: TextStyle(color: Colors.black87, fontSize: 16.0),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                color: Colors.red,
                child: Text(
                  ' Check Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

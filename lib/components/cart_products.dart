import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var cartList = [
    {
      'name': 'Blazer',
      'image': 'images/products/blazer1.jpeg',
      'price': 2500,
      'size': "M",
      'color': "Black",
      'quantity': 1,
    },
    {
      'name': 'Blazer',
      'image': 'images/products/pants1.jpeg',
      'price': 1000,
      'size': "M",
      'color': "Black",
      'quantity': 1,
    },
    {
      'name': 'Blazer',
      'image': 'images/products/shoe1.jpeg',
      'price': 500,
      'size': 7,
      'color': "Black",
      'quantity': 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: cartList.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cartList[index]['name'],
            cartList[index]['image'],
            cartList[index]['price'],
            cartList[index]['size'],
            cartList[index]['color'],
            cartList[index]['quantity'],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final String cartProductName;
  final String cartProductImage;
  final int cartProductPrice;
  final cartProductSize;
  final String cartProductColor;
  final int cartProductQuantity;

  SingleCartProduct(this.cartProductName,
      this.cartProductImage,
      this.cartProductPrice,
      this.cartProductSize,
      this.cartProductColor,
      this.cartProductQuantity);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 300.0,
        child: ListTile(
          leading: Image.asset(
            cartProductImage,
            height: 200.0,
            width: 100.0,
            alignment: Alignment.center,
          ),
          title: Text(
            cartProductName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          subtitle: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Size: ' + cartProductSize.toString()),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Color: ' + cartProductColor.toString()),
                  ),
                ],
              ),
              Text(' ' + cartProductPrice.toString())
            ],
          ),
          trailing: Column(
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.indeterminate_check_box),
                  onPressed: () {}),
              Text(cartProductQuantity.toString()),
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final String product_name;
  final String product_image;
  final int product_oldPrice;
  final int product_newPrice;

  ProductDetails(this.product_name, this.product_image, this.product_oldPrice,
      this.product_newPrice);

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
                child: Container(
              child: Image.asset(widget.product_image),
            )),
          ),
        ],
      ),
    );
  }
}

import 'package:fashonApp/components/product_grid.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  // ignore: non_constant_identifier_names
  final String product_name, product_image;

  // ignore: non_constant_identifier_names
  final int product_oldPrice, product_newPrice;

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
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_image),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_name,
                    style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                        child: Text("₹" + widget.product_oldPrice.toString()),
                      ),
                      Expanded(
                        child: Text("₹" + widget.product_newPrice.toString()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Size'),
                            content: Text('Choose the Size'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  elevation: 4.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Size')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Color'),
                            content: Text('Choose the Color'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  elevation: 4.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Color')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Quantity'),
                            content: Text('Choose the Quantity'),
                            actions: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: Text('close'),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.black,
                  elevation: 4.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text('Qty')),
                      Expanded(child: Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.red,
                  textColor: Colors.white,
                  elevation: 4.0,
                  child: Text('Buy Now'),
                ),
              ),
              IconButton(
                  icon: Icon(Icons.add_shopping_cart, color: Colors.red,),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.favorite_border, color: Colors.red,),
                  onPressed: () {}
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product Details'),
            subtitle: Text('Lorem Ipsum'),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 5.0),
                child: Text('Product Name   ' + widget.product_name),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 5.0),
                child: Text('Product Brand  ' + 'Brand X'),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 10.0, 5.0, 5.0),
                child: Text('Product Condition  ' + 'Safe'),
              )
            ],
          ),
          Divider(),
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Similar Products')),
          Container(
            height: 360.0,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

class SimilarProducts extends StatefulWidget {

  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {

  var productList = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 3000,
      'price': 2500,
    },
    {
      'name': 'Dress',
      'picture': 'images/products/dress1.jpeg',
      'old_price': 2000,
      'price': 1750,
    },
    {
      'name': 'Heels',
      'picture': 'images/products/hills1.jpeg',
      'old_price': 1000,
      'price': 800,
    },
    {
      'name': 'Pants',
      'picture': 'images/products/pants.jpeg',
      'old_price': 1200,
      'price': 1000,
    },
    {
      'name': 'Shoes',
      'picture': 'images/products/shoe1.jpeg',
      'old_price': 700,
      'price': 500,
    },
    {
      'name': 'Skirt',
      'picture': 'images/products/skt2.jpeg',
      'old_price': 1000,
      'price': 750,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: productList.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
            productList[index]['name'],
            productList[index]['picture'],
            productList[index]['old_price'],
            productList[index]['price'],
          );
        });
  }
}


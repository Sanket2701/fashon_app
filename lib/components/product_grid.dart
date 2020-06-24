import 'package:fashonApp/pages/product_detail.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var productList = [
    {
      'name': 'Blazer',
      'image': 'images/products/blazer1.jpeg',
      'old_price': 3000,
      'price': 2500,
    },
    {
      'name': 'Dress',
      'image': 'images/products/dress1.jpeg',
      'old_price': 2000,
      'price': 1750,
    },
    {
      'name': 'Heels',
      'image': 'images/products/hills1.jpeg',
      'old_price': 1000,
      'price': 800,
    },
    {
      'name': 'Pants',
      'image': 'images/products/pants1.jpeg',
      'old_price': 1200,
      'price': 1000,
    },
    {
      'name': 'Shoes',
      'image': 'images/products/shoe1.jpeg',
      'old_price': 700,
      'price': 500,
    },
    {
      'name': 'Skirt',
      'image': 'images/products/skt2.jpeg',
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
            productList[index]['image'],
            productList[index]['old_price'],
            productList[index]['price'],
          );
        });
  }
}

class SingleProduct extends StatelessWidget {
  final String productName;
  final String productImage;
  final int productOldPrice;
  final int productPrice;

  SingleProduct(this.productName, this.productImage, this.productOldPrice,
      this.productPrice);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text(productName),
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) {
                  return ProductDetails(
                      productName, productImage, productOldPrice, productPrice);
                }),
              );
            },
            child: GridTile(
              child: Image.asset(productImage),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    productName,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    '‎₹$productPrice',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    '‎₹$productOldPrice',
                    style: TextStyle(
                      color: Colors.black87,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category('images/cats/tshirt.png','tShirts'),
          Category('images/cats/dress.png','Dress'),
          Category('images/cats/formal.png','Formals'),
          Category('images/cats/informal.png','InFormals'),
          Category('images/cats/jeans.png','Jeans'),
          Category('images/cats/shoe.png','Shoes'),
          Category('images/cats/accessories.png','Accessories')
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String categoryImage;
  final String categoryName;

  Category(this.categoryImage, this.categoryName);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(categoryImage, width: 100.0, height: 80.0,),
              subtitle: Text(categoryName, textAlign: TextAlign.center),
            ),
          ),
        ),
    );
  }
}

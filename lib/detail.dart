import 'package:flutter/material.dart';
import 'package:per14/style.dart';

class DetailPage extends StatelessWidget {
  final url;
  final title;
  final thumbnail;
  final description;
  final brand;
  final category;
  final price;
  final discountPercentage;
  final rating;
  final stock;

  DetailPage(
      {this.url,
      this.title,
      this.thumbnail,
      this.description,
      this.brand,
      this.category,
      this.price,
      this.discountPercentage,
      this.rating,
      this.stock});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          thumbnail != null
              ? Image.network(
                  thumbnail,
                  width: 400,
                  height: 200,
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 250,
                  width: 100,
                  color: Colors.blue,
                ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$title',
                  style: Detail,
                ),
                Text(
                  '$description',
                  style: Description,
                ),
                SizedBox(height: 5),
                Text('Brand: $brand'),
                Divider(),
                Text('Category: $category'),
                Text('Price: $price'),
                Text('Discount: $discountPercentage'),
                Text('Rating: $rating'),
                Text('Stock: $stock')
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

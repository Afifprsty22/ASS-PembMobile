import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:per14/detail.dart';
import 'dart:convert';

class TampilDataApi extends StatefulWidget {
  const TampilDataApi({Key? key}) : super(key: key);

  @override
  _TampilDataApiState createState() => _TampilDataApiState();
}

class _TampilDataApiState extends State<TampilDataApi> {
  List _post = [];

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Data API'),
      ),
      body: ListView.builder(
          itemCount: _post.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                  leading: Container(
                    color: Colors.blue,
                    height: 100,
                    width: 100,
                    child: _post[index]['thumbnail'] != null
                        ? Image.network(
                            _post[index]['thumbnail'],
                            width: 100,
                            fit: BoxFit.cover,
                          )
                        : Center(),
                  ),
                  title: Text('${_post[index]['title']}'),
                  subtitle: Text('${_post[index]['category']}' +
                      " | " +
                      '${_post[index]['brand']}'),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => DetailPage(
                                  thumbnail: _post[index]['thumbnail'],
                                  title: _post[index]['title'],
                                  description: _post[index]['description'],
                                  brand: _post[index]['brand'],
                                  category: _post[index]['category'],
                                  price: _post[index]['price'],
                                  discountPercentage: _post[index]
                                      ['discountPercentage'],
                                  rating: _post[index]['rating'],
                                  stock: _post[index]['stock'],
                                )));
                  }),
            );
          }),
    );
  }

  Future _getData() async {
    try {
      final Response =
          await http.get(Uri.parse('https://dummyjson.com/products'));

      if (Response.statusCode == 200) {
        final data = json.decode(Response.body);
        setState(() {
          _post = data['products'];
        });
      }
    } catch (e) {
      print(e);
    }
  }
}

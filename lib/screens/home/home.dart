import 'package:flutter/material.dart';
import 'package:magazine_luiza_n1/provider/products.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/logo.jpg"),
        ),
        title: Text("Magazine Luiza"),
      ),
      body: Column(
        children: [
          Image.asset("assets/linha.jpg"),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: builder,
              itemCount: listOfProducts.length,
              separatorBuilder: (BuildContext _, int index) {
                return SizedBox(
                  height: 6,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    final _products = listOfProducts.elementAt(index);
    return Column(
      children: [
        ListTile(
          leading: Image.asset(_products.photo),
          trailing: IconButton(
            icon: (_products.isFavorite)
                ? Icon(
                    Icons.favorite,
                    color: Colors.redAccent,
                  )
                : Icon(
                    Icons.favorite_outline,
                    color: Colors.redAccent,
                  ),
            onPressed: () {
              setState(() {
                _products.isFavorite = !_products.isFavorite;
              });
            },
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _products.name,
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                _products.description,
                style: TextStyle(
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                _products.value,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              Text(
                _products.times,
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

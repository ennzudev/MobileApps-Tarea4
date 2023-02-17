import 'package:cryptolist/data/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var exchanges = jsonDecode(CRYPTO_EXCHANGES) as List;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Crypto APP",
          style: TextStyle(color: Color.fromARGB(255, 26, 26, 26)),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemCount: exchanges.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            //leading: Icon(${exchanges[index]["icon"]}),
            leading: Image.network(exchanges[index]["image"]),
            title: Text('${exchanges[index]["name"]}'),
            subtitle: Text(
                '${exchanges[index]["country"]}\n${exchanges[index]["year_established"]}'),
            trailing: CircleAvatar(
              backgroundColor: Colors.amber,
              child: Text(
                '${exchanges[index]["trust_score"]}',
                style: TextStyle(color: Color.fromARGB(255, 26, 26, 26)),
              ),
            ),
          );
        },
      ),
    );
  }
}

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
        automaticallyImplyLeading: false, // add this line
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "Crypto APP",
          style: TextStyle(color: Color.fromARGB(255, 26, 26, 26)),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFF262626),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            color: Color.fromARGB(255, 26, 26, 26),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('By Pablo Nunez'),
                    content: Text('Tarea 4 - Apps Dev for ITESO'),
                    actions: <Widget>[
                      ElevatedButton(
                        child: Text(
                          'Close',
                          style:
                              TextStyle(color: Color.fromARGB(255, 26, 26, 26)),
                        ),
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(
                            Theme.of(context).primaryColor,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: exchanges.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                exchanges[index]["image"],
                width: 40,
                height: 40,
              ),
            ),
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

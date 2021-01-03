
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'everything.dart';

class DetailNewScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  @override
  Widget build(BuildContext context) {
    final Articles args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.black87,

      body: Column(children: [
        (args.urlToImage == null
            ? Image.network("src")
            : Image.network(args.urlToImage, width: 400, height: 300)),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.topLeft,
          child: (args.author == null
              ? Text("null author")
              : Text(
            args.author,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          )),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            (args.publishedAt == null
                ? Text("null publish")
                : Text(
              args.publishedAt,
              style: TextStyle(fontSize: 15, color: Colors.white),
            )),
            SizedBox(
              width: 150,
            ),
            Icon(
              Icons.favorite_outline,
              size: 20,
              color: Colors.white,
            ),
            Icon(
              Icons.ios_share,
              size: 20,
              color: Colors.white,
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          child: Text("RENT NOW",
              style: TextStyle(fontSize: 20, backgroundColor: Colors.grey)),
        ),
        SizedBox(height: 20),
        Text(
          args.description,
          style: TextStyle(fontSize: 13, color: Colors.white),
        ),
        SizedBox(
          height: 40,
        ),
        Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Trailers & Stills",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ))
      ]),
    );
  }
}
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../everything.dart';

class EverythingHome extends StatefulWidget {
  static const routeName = '/everythingArguments';
  @override
  State<StatefulWidget> createState() {
    return EverythingHomeState(
        url:
            "http://newsapi.org/v2/everything?q=apple&from=2020-07-06&to=2020-07-06&sortBy=popularity&apiKey=8f39db3aa4ef40ea83d8ff29a4794ef4");
  }
}

class EverythingHomeState extends State<EverythingHome> {
  String url;
  EverythingHomeState({this.url});

  // var url =
  //     "http://newsapi.org/v2/everything?q=apple&from=2020-07-06&to=2020-07-06&sortBy=popularity&apiKey=8f39db3aa4ef40ea83d8ff29a4794ef4";

  Everything everything;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var data = await http.get(url);
    var jsonData = jsonDecode(data.body);
    everything = Everything.fromJson(jsonData);
    print("Data" + jsonData.toString());

    setState(() {});
  }

  Widget build(BuildContext context) {
    final Everything args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('News'),
      // ),
      body:  ListView(
        scrollDirection: Axis.horizontal,
        children: everything.articles
            .map(
              (news) => Container(
            color: Colors.redAccent,
            height: 0,
            padding: EdgeInsets.all(50.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context, DetailEverythingScreen.routeName,
                    arguments: Articles(
                      source: news.source,
                      author: news.author,
                      title: news.title,
                      description: news.description,
                      url: news.url,
                      urlToImage: news.urlToImage,
                      publishedAt: news.publishedAt,
                      content: news.content,
                    ));
              },
              child: Card(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                        child: Icon(
                          Icons.movie,
                          size: 20,
                        )),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: 100,
                      child: Text(
                        "Movie",
                        style: TextStyle(
                          fontSize: 16.0,
                          wordSpacing: 0.5,
                          letterSpacing: 1.5,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                color: Colors.yellow,
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}


class DetailEverythingScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  @override
  Widget build(BuildContext context) {
    final Articles args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Everything News'),
      ),
      body: Column(children: [
        (args.urlToImage == null
            ? Image.network("src")
            : Image.network(args.urlToImage, width: 400, height: 200)),
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

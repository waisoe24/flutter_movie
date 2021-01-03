import 'dart:convert';
import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_homework/everything.dart';
import 'package:flutter_news_homework/views/everything_screen.dart';
import 'package:flutter_news_homework/views/free_screen.dart';
import 'package:http/http.dart' as http;
import '';
import 'downloads/download.dart';
import 'kyae_mone.dart';
import 'news_home_screen.dart';

class Movie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MovieState();
  }
}

class _MovieState extends State<Movie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Your Name"),
        leading: Icon(
          Icons.money,
          size: 40,
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            child: Row(
              children: [
                Card(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Search",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: 220,
                      ),
                      Container(
                        child: Icon(
                          Icons.search_rounded,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Card(
                  color: Colors.white,
                  child: Text(
                    "OK",
                    style: TextStyle(fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.network(
              "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
              width: 200,
              height: 300,
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Text(
              "Channels",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                          width: 100,
                          height: 100,
                        ),
                      ),
                      Container(
                        child: Text(
                          "Movie",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => FreeMovie()));
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (_) => NewsHome()));
                      },
                      child: Container(
                        child: Column(
                          children: [Icon(Icons.fact_check), Text("Free")],
                        ),
                      )),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Movie()));
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (_) => NewsHome()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.movie,
                              color: Colors.blue[800],
                            ),
                            Text("Movies")
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => NewsHome()));
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (_) => NewsHome()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.home,
                              size: 60,
                            ),
                            Text("Home")
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => KyaeMone()));
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (_) => NewsHome()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.read_more_rounded,
                            ),
                            Text("ကြေးမုံ")
                          ],
                        ),
                      )),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => Download()));
                        Navigator.pop(context,
                            MaterialPageRoute(builder: (_) => NewsHome()));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.cloud_download,
                            ),
                            Text("Dowload")
                          ],
                        ),
                      )),
                ),
              ],
            ),
          )
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DetailMovieScreen extends StatelessWidget {
  static const movieRoute = '/movieArguments';

  @override
  Widget build(BuildContext context) {
    final Articles movieArgs = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Movie'),
      ),
      body: Column(children: [
        (movieArgs.urlToImage == null
            ? Image.network("src")
            : Image.network(movieArgs.urlToImage, width: 200, height: 200)),
        (movieArgs.title == null
            ? Text("null")
            : Text(movieArgs.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            (movieArgs.author == null
                ? Text("null author")
                : Text(movieArgs.author)),
            (movieArgs.publishedAt == null
                ? Text("null publish")
                : Text(movieArgs.publishedAt))
          ],
        ),
        Text(movieArgs.description),
      ]),
    );
  }
}

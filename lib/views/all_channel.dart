import 'dart:convert';
import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_homework/everything.dart';
import 'downloads/download.dart';
import 'package:flutter_news_homework/views/everything_screen.dart';
import 'package:flutter_news_homework/views/free_screen.dart';
import 'package:flutter_news_homework/views/kyae_mone.dart';
import 'package:flutter_news_homework/views/movie_screen.dart';
import 'package:http/http.dart' as http;
import '';

class Channel extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ChannelState();
  }
}

class _ChannelState extends State<Channel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      body: GridView.count(crossAxisCount: 2,
      scrollDirection: Axis.vertical,
        children: [
          Card(
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Container(
                    child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    child: Text("Movie Name"),
                  )
                ],
              ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ), Card(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: Image.network("https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 150, height: 120,),
                ),
                SizedBox(height: 10,),
                Container(
                  child: Text("Movie Name"),
                )
              ],
            ),
          ),

        ],
      ),


    );
  }
}

class DetailChannelScreen extends StatelessWidget {
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

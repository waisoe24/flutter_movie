import 'dart:convert';
import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_homework/everything.dart';
import 'package:flutter_news_homework/views/all_channel.dart';
import 'package:flutter_news_homework/views/sell_all.dart';
import 'downloads/download.dart';
import 'package:flutter_news_homework/views/everything_screen.dart';
import 'package:flutter_news_homework/views/free_screen.dart';
import 'package:flutter_news_homework/views/kyae_mone.dart';
import 'package:flutter_news_homework/views/movie_screen.dart';
import 'package:http/http.dart' as http;
import '';

class NewsHome extends StatefulWidget {
  static const newsRoute = '/newsArguments';

  @override
  State<StatefulWidget> createState() {
    return _NewsState();
  }
}

class _NewsState extends State<NewsHome> {
  Everything everything;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    var data = await http.get(
        "http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=abd0cdfe30854b3983f56072d37d2742");

    var jsonData = jsonDecode(data.body);
    everything = Everything.fromJson(jsonData);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text("Your Name"),
        leading: Icon(
          Icons.money,
          size: 40,
        ),
        backgroundColor: Colors.cyan,
      ),
      body: everything == null
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200.0,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      enlargeCenterPage: true,
                    ),
                    items: [
                      "https://venturebeat.com/wp-content/uploads/2019/09/google-dart-flutter.png?w=1200&strip=all",
                      "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
                      "https://img.favpng.com/25/9/1/dart-google-developers-flutter-android-png-favpng-vi7iwNmVaBCVr91EF35XrnFfc.jpg",
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 2.0),
                              decoration: BoxDecoration(color: Colors.white),
                              child: Image.network(
                                i,
                                width: 200,
                              ));
                        },
                      );
                    }).toList(),
                  ),
                ),
                Container(
                    alignment: Alignment.topRight,
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SeeAll()));
                        },
                        child: Text(
                          ">",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ),
                    )),
                Expanded(
                  child: ListView(
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
                                    context, DetailNewScreen.routeName,
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
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Channels",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 240,
                    ),
                    Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Channel()));
                        },
                        child: Text(
                          "See All>",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10.0,
                              color: Colors.black87),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: everything.articles
                        .map((news) => Container(
                              height: 100,
                              padding: EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, DetailNewScreen.routeName,
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
                                child: Container(
                                    color: Colors.red[300],
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              child: (news.urlToImage == null
                                                  ? Image.network(
                                                      "https://images.wsj.net/im-206342/social",
                                                      width: 80,
                                                      height: 50,
                                                    )
                                                  : Image.network(
                                                      news.urlToImage,
                                                      height: 50,
                                                      width: 80,
                                                      fit: BoxFit.fill,
                                                    )),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(child: Text("27.12.2020"))
                                          ],
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Container(
                                          width: 150,
                                          child: (news.description == null
                                              ? Text("Description")
                                              : Text(
                                                  news.description,
                                                  maxLines: 2,
                                                  style: TextStyle(),
                                                )),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Container(
                                          child: Icon(
                                            Icons.date_range,
                                            size: 60,
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ))
                        .toList(),
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => FreeMovie()));
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(Icons.fact_check),
                                  Text("Free")
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
                                  MaterialPageRoute(builder: (_) => Movie()));
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.movie,
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => NewsHome()));
                              Navigator.pop(context, true);
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.home,
                                    color: Colors.blue[800],
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => KyaeMone()));
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Download()));
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
              child: Column(children: [
                Card(
                  child: Image.network(
                      "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png", width: 100, height: 100,),
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.circular(100.0),
                  // ),
                ),
                Container(
                  child: Text("Name", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                )
              ]),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Icon(Icons.star_border),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Text("Rate Us"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Icon(Icons.share),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text("Share the App"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Icon(Icons.message),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text("Disable notifications"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Icon(Icons.not_started),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text("Remove Ads for free"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Icon(Icons.wifi),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text("Check Chromecast speed"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
            : Image.network(args.urlToImage, width: 400, height: 100)),
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

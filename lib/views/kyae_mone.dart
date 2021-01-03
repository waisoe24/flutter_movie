import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_news_homework/views/news_home_screen.dart';

import 'downloads/download.dart';
import 'free_screen.dart';
import 'movie_screen.dart';

class KyaeMone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Your Name"),
          leading: Icon(Icons.money,
            size: 40,),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
      children: [
        Container(
          child: Image.network(
            "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png",
            width: 200,
            height: 300,
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          child: Text("Movie Name",
          style: TextStyle(fontSize: 30, color: Colors.black87),),
        ),
        SizedBox(height: 10,),
        Container(
          child: Column(
         children: [
           Container(
    child: Text("Movie Kyae Mone sajfkjsakfjkas", style: TextStyle(fontSize: 20 , color: Colors.black87),),
    ),
    Container(
    child: Text("Movie Kyae Mone dgsdhgsdhhgh", style: TextStyle(fontSize: 20 , color: Colors.black87),),
    ),
    Container(
    child: Text("Movie Kyae Mone fgdsdfgdsfg", style: TextStyle(fontSize: 20 , color: Colors.black87),),
    ),
    Container(
    child: Text("Movie Kyae Mone gdsfgsd", style: TextStyle(fontSize: 20 , color: Colors.black87),),
    ),
    Container(
    child: Text("Movie Kyae Mone dfgdsfgsd", style: TextStyle(fontSize: 20 , color: Colors.black87),),
    ),
    Container(
    child: Text("Movie Kyae Mone gdsfgdsf", style: TextStyle(fontSize: 20 , color: Colors.black87),),
    ),
    ],
          ),
          ),
        SizedBox(height: 110,),
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
                      Navigator.pop(context,MaterialPageRoute(builder:(_) => NewsHome()));

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
                      Navigator.pop(context,MaterialPageRoute(builder:(_) => NewsHome()));

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
                      Navigator.pop(context,MaterialPageRoute(builder:(_) => NewsHome()));

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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => KyaeMone()));
                      Navigator.pop(context,MaterialPageRoute(builder:(_) => NewsHome() ));
                    },
                    child: Container(
                      child: Column(
                        children: [
                          Icon(
                            Icons.read_more_rounded, color: Colors.blue[800],
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
                      Navigator.pop(context,MaterialPageRoute(builder:(_) => NewsHome()));

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
                    )
                ),
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

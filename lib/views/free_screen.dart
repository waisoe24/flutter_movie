import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_news_homework/views/news_home_screen.dart';

import 'downloads/download.dart';
import 'kyae_mone.dart';
import 'movie_screen.dart';

class FreeMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Name"),
        leading: Icon(
          Icons.money,
          size: 40,
        ),
        backgroundColor: Colors.red[800],
      ),
      body: Container(
        color: Colors.cyan,
        child: Column(
          children: [
            Container(
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiqeSdLAEvxW-x_wgYQp4gjgvooQEPe7mNQ&usqp=CAU",
                width: 100,
                height: 150,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiqeSdLAEvxW-x_wgYQp4gjgvooQEPe7mNQ&usqp=CAU",
                          width: 80,
                          height: 100,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text("Movie from MRTV-4", style: TextStyle(fontSize: 20),),
                      )
                    ],
                  )
                ],
              ),
            ),

            Expanded(
              child: Container(
                color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text("Monday", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('24', style: TextStyle(fontSize: 20),),
                      )
                    ],

                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Tuesday", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('25', style: TextStyle(fontSize: 20),),
                      )
                    ],

                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Wednesday", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('26', style: TextStyle(fontSize: 20),),
                      )
                    ],

                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Thursday", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('27', style: TextStyle(fontSize: 20),),
                      )
                    ],

                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Friday", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('28', style: TextStyle(fontSize: 20),),
                      )
                    ],

                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Saturday", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('29', style: TextStyle(fontSize: 20),),
                      )
                    ],

                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Sunday", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        child: Text('30', style: TextStyle(fontSize: 20),),
                      )
                    ],
                  ),
                ],
              ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 100,),
                      Container(
                        child: Text("15:20", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        child: Text("Ep1", style: TextStyle(fontSize: 20),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 100,),
                      Container(
                        child: Text("15:20", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        child: Text("Ep1", style: TextStyle(fontSize: 20),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 100,),
                      Container(
                        child: Text("15:20", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        child: Text("Ep1", style: TextStyle(fontSize: 20),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 100,),
                      Container(
                        child: Text("15:20", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        child: Text("Ep1", style: TextStyle(fontSize: 20),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 100,),
                      Container(
                        child: Text("15:20", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        child: Text("Ep1", style: TextStyle(fontSize: 20),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 100,),
                      Container(
                        child: Text("15:20", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        child: Text("Ep1", style: TextStyle(fontSize: 20),),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 100,),
                      Container(
                        child: Text("15:20", style: TextStyle(fontSize: 20),),
                      ),
                      SizedBox(width: 100,),
                      Container(
                        child: Text("Ep1", style: TextStyle(fontSize: 20),),
                      )
                    ],
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
                            children: [
                              Icon(
                                Icons.fact_check,
                                color: Colors.blue[800],
                              ),
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
                          Navigator.pop(context,
                              MaterialPageRoute(builder: (_) => NewsHome()));
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

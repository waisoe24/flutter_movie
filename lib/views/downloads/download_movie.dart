import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_news_homework/views/news_home_screen.dart';

import '../free_screen.dart';
import '../kyae_mone.dart';
import '../movie_screen.dart';
import 'download.dart';

class DownloadMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Name"),
        leading: Icon(
          Icons.money,
          size: 40,
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(child: Text("Collections", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),)),
          SizedBox(
            height: 10,
          ),
          Container(
              child: Row(
                children: [
                  Container(
                    child: Text(
                      "Movies",
                      style: TextStyle(fontSize: 30, color: Colors.red),
                    ),
                  ),
                  SizedBox(
                    width: 55,
                  ),
                  Container(
                    child: Text(
                      "Video",
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                  ),

                  SizedBox(
                    width: 55,
                  ),
                  Container(

                    child: Text(
                      "Look",
                      style: TextStyle(fontSize: 30, color: Colors.black87),
                    ),
                  ),
                ],
              )
          ),
          Expanded(child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiqeSdLAEvxW-x_wgYQp4gjgvooQEPe7mNQ&usqp=CAU",width: 80,height: 100,),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Card(
                            child: Text("Movie Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                          ),
                          Container(
                            child: Text("Movie Name sdjfkjskgj fklksa fsjfklas", style: TextStyle(fontSize: 15,),),
                          )
                        ],

                      )
                    ],
                  )
              ),
              Container(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiqeSdLAEvxW-x_wgYQp4gjgvooQEPe7mNQ&usqp=CAU",width: 80,height: 100,),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Card(

                            child: Text("Movie Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                          ),
                          Container(
                            child: Text("Movie Name sdjfkjskgj fklksa fsjfklas", style: TextStyle(fontSize: 15,),),
                          )
                        ],

                      )
                    ],
                  )
              ),

              Container(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiqeSdLAEvxW-x_wgYQp4gjgvooQEPe7mNQ&usqp=CAU",width: 80,height: 100,),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Card(

                            child: Text("Movie Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                          ),
                          Container(
                            child: Text("Movie Name sdjfkjskgj fklksa fsjfklas", style: TextStyle(fontSize: 15,),),
                          )
                        ],

                      )
                    ],
                  )
              ),

              Container(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiqeSdLAEvxW-x_wgYQp4gjgvooQEPe7mNQ&usqp=CAU",width: 80,height: 100,),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Card(

                            child: Text("Movie Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                          ),
                          Container(
                            child: Text("Movie Name sdjfkjskgj fklksa fsjfklas", style: TextStyle(fontSize: 15,),),
                          )
                        ],

                      )
                    ],
                  )
              ),

              Container(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiqeSdLAEvxW-x_wgYQp4gjgvooQEPe7mNQ&usqp=CAU",width: 80,height: 100,),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Card(

                            child: Text("Movie Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                          ),
                          Container(
                            child: Text("Movie Name sdjfkjskgj fklksa fsjfklas", style: TextStyle(fontSize: 15,),),
                          )
                        ],

                      )
                    ],
                  )
              ),

              Container(
                  child: Row(
                    children: [
                      SizedBox(width: 5,),
                      Container(
                        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDiqeSdLAEvxW-x_wgYQp4gjgvooQEPe7mNQ&usqp=CAU",width: 80,height: 100,),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          Card(

                            child: Text("Movie Name", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),),
                          ),
                          Container(
                            child: Text("Movie Name sdjfkjskgj fklksa fsjfklas", style: TextStyle(fontSize: 15,),),
                          )
                        ],

                      )
                    ],
                  )
              ),
            ],
          )
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
                        Navigator.pop(context,MaterialPageRoute(builder:(_) => NewsHome()));

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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => NewsHome()));
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => KyaeMone()));
                        Navigator.pop(context,MaterialPageRoute(builder:(_) => NewsHome()));

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
                        Navigator.pop(context,MaterialPageRoute(builder:(_) => NewsHome() ));
                      },
                      child: Container(
                        child: Column(
                          children: [
                            Icon(
                              Icons.cloud_download, color: Colors.blue[800],
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

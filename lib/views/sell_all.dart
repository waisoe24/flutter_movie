import 'dart:convert';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeeAll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SeeAllState();
  }
}

class _SeeAllState extends State<SeeAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: ListView(
        children: [
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Card(
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
                      child: Image.network(
                          "https://xam.com.au/wp-content/uploads/2019/03/1flutter_blog-2-750x400-1.png"),
                      width: 80,
                      height: 50,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(child: Text("27.12.2020"))
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: Text("Description"),
                ),
                SizedBox(
                  width: 60,
                ),
                Container(
                  child: Icon(
                    Icons.date_range,
                    size: 60,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

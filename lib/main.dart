
import 'package:flutter/material.dart';
import 'package:flutter_news_homework/views/news_home_screen.dart';
import 'package:flutter_news_homework/views/everything_screen.dart';

import 'everything.dart';

void main() {
  runApp(
    MaterialApp(
      home: NewsHome(),
     routes: {
       DetailNewScreen.routeName:(context) => DetailNewScreen()
     },

    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsHome(),

    );
  }
}

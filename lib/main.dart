import 'package:cat_task2/Detail.dart';
import 'package:cat_task2/Layout.dart';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Layout.routName,
      routes: {
        Layout.routName:(v)=>Layout(),

        Detail.routName:(v)=>Detail(),
        },
    );
  }
}



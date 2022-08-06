import 'package:flutter/material.dart';
import 'package:mydimo3/home_page.dart';

import 'detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes:{
        HomePage.id: (context)=> HomePage(),
        DetailPage.id: (context)=> DetailPage(input: 'PDP Online')
    },

    );
  }
}

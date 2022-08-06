import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static final String id='detail_page';
  final String? input;
  DetailPage({required this.input});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed : (){
            Navigator.of(context).pop({'data':"alhamdulillah"});
          },
          color: Colors.deepOrangeAccent,
          child: Text(widget.input!),
        ),

      )
    );
  }
}

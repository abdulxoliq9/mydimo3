
import 'package:flutter/material.dart';
import 'detail_page.dart';


class HomePage extends StatefulWidget {
  static final String id='home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data='Open Detail Page';
  Future openDetail() async{

   Map results = await Navigator.of(context).push(new MaterialPageRoute(
        builder:(BuildContext context){
          return new DetailPage(input: 'PDP Online');
        }
    ));

   if(results!=null && results.containsKey('data')){
      setState((){
        data = results['data'];
      });
    }else{ print('nothing');}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: (){
            openDetail();
            //Navigator.pushReplacementNamed(context, DetailPage.id);
          },
            color: Colors.cyan,
            child: Text(data),
        ),
      ),
    );
  }
}

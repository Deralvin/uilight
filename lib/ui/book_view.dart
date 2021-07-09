import 'package:uilight/constanta/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitypo/uitypo.dart';

class BookView extends StatefulWidget{
  @override
  _BookViewState createState()=> _BookViewState();
}

class _BookViewState extends State<BookView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonMainCanvas(
      appBarBgColor:bgcolor ,
      title: Text("Book"),
      body: CommonButtonIcon(
        colorsBtn: Colors.green,
        onpressed: (){
          print("button");
        },
        icon: Icon(Icons.search),
        tittle: Text("Cari"),

      ),
    );
    throw UnimplementedError();
  }

}
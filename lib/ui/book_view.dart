import 'package:uilight/constanta/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/ui/cabang_view.dart';
import 'package:uilight/ui/widgets/calendar_view.dart';
import 'package:uitypo/uitypo.dart';

class BookView extends StatefulWidget{
  @override
  _BookViewState createState()=> _BookViewState();
}

class _BookViewState extends State<BookView>{
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor:bgcolor ,
        title: Text("Book"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                showCursor: false,
                autofocus: false,
                initialValue: 'Pilih Cabang',

                readOnly: true,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>CabangView()));
                },
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: 'Dari',
                  labelStyle: TextStyle(color: Colors.grey),
                  hintText: 'Pilih Cabang',
                  icon: Icon(Icons.directions_bus,color: Colors.amberAccent,)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                showCursor: false,
                autofocus: false,
                initialValue: 'Pilih Cabang',

                readOnly: true,
                onTap: (){
                  print("tap");
                },
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    labelText: 'Dari',
                    labelStyle: TextStyle(color: Colors.grey),
                    hintText: 'Pilih Cabang',
                    icon: Icon(Icons.directions_bus,color: Colors.amberAccent,)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                showCursor: false,
                autofocus: false,
                initialValue: 'Pilih Cabang',

                readOnly: true,
                onTap: (){
                  print("tap");
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>CalendarView()));
                },
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    labelText: 'Tanggal Berangkat',
                    labelStyle: TextStyle(color: Colors.grey),
                    hintText: 'Pilih Cabang',
                    icon: Icon(Icons.calendar_today,color: Colors.amberAccent,)
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextFormField(
                showCursor: false,
                autofocus: false,
                initialValue: '1 Orang',

                readOnly: true,
                onTap: (){
                  _scaffoldKey.currentState!.hideCurrentSnackBar();
                  _scaffoldKey.currentState!.showSnackBar(new SnackBar(
                      content: new Text("text"),
                    backgroundColor: Colors.white,


                  ));
                },
                decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    labelText: 'Penumpang',
                    labelStyle: TextStyle(color: Colors.grey),
                    hintText: 'Pilih Cabang',
                    icon: Icon(Icons.people,color: Colors.amberAccent,)
                ),
              ),
            ),
          ],
        ),
      )
    );
    throw UnimplementedError();
  }

}
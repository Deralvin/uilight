import 'package:uilight/constanta/Colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Value.dart';
import 'package:uilight/ui/cabang_view.dart';
import 'package:uilight/ui/schedule_view.dart';
import 'package:uilight/ui/widgets/calendar_view.dart';
import 'package:uitypo/uitypo.dart';

class BookView extends StatefulWidget{
  @override
  _BookViewState createState()=> _BookViewState();
}

class _BookViewState extends State<BookView>{
  Value _value = new Value();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var resultAwal;
  DateTime now = new DateTime.now();
  TextEditingController jurusanAwalController = new TextEditingController();
  TextEditingController jurusanTujuanController = new TextEditingController();
  TextEditingController penumpangController = new TextEditingController();
  TextEditingController tanggalController = new TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    jurusanAwalController = TextEditingController(text: "Pilih Cabang");
    jurusanTujuanController = TextEditingController(text: "Pilih Cabang");
    penumpangController = TextEditingController(text:"1 Orang");
    tanggalController = TextEditingController(text: now.toString().substring(0,10));
  }
  void moveCabang()async{
    final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=>CabangView(value: _value.jurusanawal,)));
    setState(() {
      resultAwal = result;
      print(resultAwal);
    });
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: const Text('Hello, Coflutter!'),
      backgroundColor: const Color(0xffae00f0),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
          label: 'Done',
          textColor: Colors.white,
          onPressed: () {
            print('Done pressed!');
          }),
    );

    Scaffold.of(context).showSnackBar(snackBar);
  }
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
              child: TextField(
                showCursor: false,
                autofocus: false,
                controller: jurusanAwalController,
                readOnly: true,
                onTap: ()async{
                  final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=>CabangView(value:_value.jurusanawal,)));
                  setState(() {
                    if(result != null || result != "null"){
                      jurusanAwalController.text=result;
                      resultAwal = result;
                    }else{
                      jurusanAwalController.text="Pilih Cabang";
                      print(resultAwal);
                    }
                  });
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
              child: TextField(
                showCursor: false,
                autofocus: false,
                controller: jurusanTujuanController,
                readOnly: true,
                onTap: ()async{
                  final result = await Navigator.push(context, MaterialPageRoute(builder: (context)=>CabangView(value:_value.jurusanTujuan,)));
                  setState(() {
                    if(result != null || result != "null"){
                      jurusanTujuanController.text=result;

                    }else{
                      jurusanTujuanController.text="Pilih Cabang";
                      print(resultAwal);
                    }
                  });
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
              child: TextField(
                showCursor: false,
                autofocus: false,
                controller: tanggalController,
                readOnly: true,
                onTap: ()async{
                  print("tap");
                  final result = await Navigator.push(context,MaterialPageRoute(builder: (context)=>CalendarView()));
                  setState(() {
                    tanggalController.text = result;
                  });
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
              child: TextField(
                showCursor: false,
                autofocus: false,
                controller: penumpangController,
                readOnly: true,
                onTap: (){
                  _scaffoldKey.currentState!.hideCurrentSnackBar();
                  _scaffoldKey.currentState!.showSnackBar(new SnackBar(

                      content: Container(
                        height: 150,
                          child:ListView.builder(
                            itemCount: 4,
                            itemBuilder: (ctx,idx){
                              return InkWell(
                                child:Column(
                                  children: [
                                    Center(
                                      child:Text("${idx+1} Orang", style: TextStyle(color: Colors.black,fontSize: 17),),
                                    ),
                                    Divider(),
                                  ],
                                ),
                                onTap: (){
                                  setState(() {
                                    penumpangController.text = "${idx+1} Orang";
                                  });
                                  _scaffoldKey.currentState!.removeCurrentSnackBar(
                                      reason: SnackBarClosedReason.action
                                  );
                                },
                              );
                            },
                        ),
                      ),
                    backgroundColor: Colors.white,
                    elevation: 3,
                    dismissDirection: DismissDirection.vertical,
                    duration: Duration(days: 1),


                  )).close;
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
            CommonButtonIcon(
              icon: Icon(Icons.search),
              tittle: Text("Cari"),
              onpressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ScheduleView()));
              },
              colorsBtn: Colors.green,
            )
          ],
        ),
      )
    );
    throw UnimplementedError();
  }

}
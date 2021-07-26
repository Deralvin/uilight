import 'dart:math';

import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/model/seat_model.dart';
import 'package:uilight/ui/penumpang_view.dart';
import 'package:uilight/ui/widgets/common_text.dart';
import 'package:uilight/ui/widgets/grid_item.dart';
import 'package:uitypo/common_button_icon.dart';
import 'package:uitypo/common_main_canvas.dart';
import 'package:uilight/constanta/Value.dart';
import 'package:multi_select_item/multi_select_item.dart';
import 'package:tuple/tuple.dart';
class SeatView extends StatefulWidget{
  @override
  _SeatViewState createState()=> _SeatViewState();
}

class _SeatViewState extends State<SeatView>{
  List<Color> colors=[Colors.white,Colors.red,Colors.blue];
  Color _containerColor = Colors.blue;
  Value values = new Value();
  List<Petalayout> data = [];
  List<Tuple2<bool,String>> onTaps = [];
  final List<IconData> _icons = [
    Icons.offline_bolt,
    Icons.ac_unit,
    Icons.dashboard,
    Icons.backspace,
    Icons.cached,
    Icons.edit,
    Icons.face,
  ];
  int counter = 0;
  List<dynamic> _selectedIcons = [];
  List<Petalayout> seat(){

    values.valueseat.petalayout.forEach((key, value) {
      counter++;
      print(value);
      data.add(new Petalayout(
        label: value.label,
        dek: value.dek,
        idoutletdropoff: value.idoutletdropoff,
        idoutletpickup: value.idoutletpickup,
        idproduk: value.idproduk,
        isagenverified: value.isagenverified,
        isboarding: value.isboarding,
        iscetaktiket: value.iscetaktiket,
        issmoking: value.issmoking,
        istransit: value.istransit,
        jenispembayaran: value.jenispembayaran,
        kodebooking: value.kodebooking,
        kodepromo: value.kodepromo,
        nama: value.nama,
        namapromo: value.namapromo,
        nominal: value.nominal,
        notiket: value.notiket,
        status: value.status,
        tglberangkat: value.tglberangkat,
        waktupesan: value.waktupesan,
        count: counter
      ));
    });
    return data;
  }
  void checkSeat(){
    values.valueseat.petalayout.forEach((key, data) {
      print("ini key "+key);
      print("ini value "+data.toString());
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkSeat();
    seat();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return CommonMainCanvas(
      title: Text("Pilih Kursi"),
      appBarBgColor: bgcolor,
      body:SafeArea(
        child: Column(
          children: [
            Card(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5,horizontal: 11),
                child:Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3,horizontal: 3),
                      margin: EdgeInsets.only(right: 15),
                      height: 39,
                      child: TimeCircularCountdown(
                        countdownTotalColor: Colors.greenAccent,
                        countdownRemainingColor: Colors.black54,
                        textStyle: TextStyle(color: Colors.green),
                        unit: CountdownUnit.second,
                        countdownTotal: 30,
                        onUpdated: (unit, remainingTime) => print('Updated'),
                        onFinished: () => print(""),
                      ),
                    ) ,
                    Text("Pilih Kursi",style: TextStyle(color: Colors.grey),)
                  ],
                ),
              )
            ),
            SizedBox(height: 14,),
            Expanded(
              child:ListView(
                scrollDirection: Axis.vertical,
                primary: true,
                children: [
                  Card(
                      child: GridView(
                        children: data.map((values){
                          setState(() {
                            counter++;
                          });
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                if(values.status=='p'){
                                  if(_selectedIcons.contains(values)){
                                    _selectedIcons.remove(values);
                                  }else{
                                    _selectedIcons.add(values);
                                  }
                                }
                              });
                            },
                            child: GridViewItem(_selectedIcons.contains(values),values)
                          );
                        }).toList(),
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: int.parse(values.valueseat.kolom),
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: bgcolor,
              child: Row(
                children: [
                  Expanded(
                    child:Text(
                      "Harga Kursi: Rp 20.000",
                      style: TextStyle(color: Colors.white,fontSize: 19),
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder:(context)=> PenumpangView())),
                    child: Text("PILIH"),
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
    throw UnimplementedError();
  }
  Future<int> returndata() async{
    setState(() {
      counter++;
    });
    return counter;
  }

}

class Item {
  String data;
  int rank;

  Item(this.data, this.rank);
}
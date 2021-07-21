import 'dart:math';

import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/model/seat_model.dart';
import 'package:uilight/ui/penumpang_view.dart';
import 'package:uilight/ui/widgets/common_text.dart';
import 'package:uitypo/common_button_icon.dart';
import 'package:uitypo/common_main_canvas.dart';
import 'package:uilight/constanta/Value.dart';
class SeatView extends StatefulWidget{
  @override
  _SeatViewState createState()=> _SeatViewState();
}

class _SeatViewState extends State<SeatView>{
  List<Color> colors=[Colors.white,Colors.red,Colors.blue];
  Color _containerColor = Colors.blue;
  Value values = new Value();
  List<Widget> data = [];

  List<Widget>seat(){
    int counter = 0;
    values.valueseat.petalayout.forEach((key, value) {
      counter++;
      if(value.status=="block"){
        data.add(
            Container(

              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.grey)
              ),

              child:Center(
                  child:CommonText(
                    text: "$counter",
                    textStyle: TextStyle(
                        color: Colors.white,
                      fontSize: 17
                    ),
                  )
              ))
        );
      }else if(value.status == "x"){
        data.add(
            Container(

              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.white)
              ),
            )
        );
      }else if(value.status == 'p'){
        data.add(
          GestureDetector(
            onTap: (){

            },
            child:Container(

              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  border: Border.all(color: Colors.grey)
              ),

              child:Center(
                  child:CommonText(
                    text: "$counter",
                    textStyle: TextStyle(
                        color: Colors.black54,
                        fontSize: 17
                    ),
                  )
              )),
          )
        );
      }else{
        data.add(
            Container(

              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(300)),
                  border: Border.all(color: Colors.green)
              ),

              child:Center(
                child:CommonText(
                  text: "SUPIR",
                  textStyle: TextStyle(
                    color: Colors.green
                  ),
                )
              )
            )
        );
      }

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
                        children: data,
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

}
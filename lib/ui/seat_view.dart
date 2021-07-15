import 'dart:math';

import 'package:circular_countdown/circular_countdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uitypo/common_button_icon.dart';
import 'package:uitypo/common_main_canvas.dart';

class SeatView extends StatefulWidget{
  @override
  _SeatViewState createState()=> _SeatViewState();
}

class _SeatViewState extends State<SeatView>{
  List<Color> colors=[Colors.white,Colors.red,Colors.blue];
  Color _containerColor = Colors.blue;
  int randomNumber() {
    var random = new Random();

    int min = 0;

    int max = 3;

    int result = min + random.nextInt(max - min);

    print(result);
    return result;
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
                        onFinished: () => Navigator.pop(context),
                      ),
                    ) ,
                    Text("Pilih Kursi",style: TextStyle(color: Colors.grey),)
                  ],
                ),
              )
            ),
            SizedBox(height: 14,),
            Card(
              child: GridView.builder(
                itemCount: 20,
                itemBuilder: (ctx,idx){
                  int colorNumber = randomNumber();
                  bool selected = false;
                  if(idx == 3){
                    return Container(

                      color: Colors.grey,
                      child: Text("${idx+1}"),
                      // dummy widget to fill [1, 1]
                    );
                  }else{
                   return Container(
                        child: Text("${idx+1}"),
                        color: colors[colorNumber]
                      // dummy widget to fill [1, 1]
                    );

                  }

                },
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
              )
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
                    onPressed: ()=>print("d"),
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
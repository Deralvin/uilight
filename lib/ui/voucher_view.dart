import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uitypo/common_main_canvas.dart';

class VoucherView extends StatefulWidget{
  @override
  _VoucherViewState createState()=> _VoucherViewState();
}

class _VoucherViewState extends State<VoucherView>{
  @override
  Widget build(BuildContext context) {
    return CommonMainCanvas(
      title: Text("Pilih Voucher"),
      appBarBgColor: bgcolor,
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  showCursor: false,
                  autofocus: false,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: UnderlineInputBorder(

                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      labelText: 'Input Voucher',

                      labelStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green,

              ),
              onPressed: () {

              },
              child: Text("GUNAKAN"),
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}
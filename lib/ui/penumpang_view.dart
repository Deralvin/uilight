import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/ui/widgets/common_text.dart';
import 'package:uilight/ui/widgets/group_separator.dart';
import 'package:uitypo/common_main_canvas.dart';

class PenumpangView extends StatefulWidget {
  @override
  _PenumpangViewState createState() => _PenumpangViewState();
}

class _PenumpangViewState extends State<PenumpangView> {
  bool valuefirst = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // TODO: implement build
    return CommonMainCanvas(
      title: Text("Penumpang"),
      appBarBgColor: bgcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GroupSeparator(
                width: size.width,
                cabang: "Pemesan",
              ),
              CommonText(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                text: "Nama Pemesan",
              ),
              CommonText(
                margin: EdgeInsets.symmetric(horizontal: 10),
                text: "Deral",
                textStyle: TextStyle(fontSize: 18),
              ),
              CommonText(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                text: "Email Pemesan",
              ),
              CommonText(
                margin: EdgeInsets.symmetric(horizontal: 10),
                text: "Deral@gmail.com",
                textStyle: TextStyle(fontSize: 18),
              ),
              CommonText(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                text: "No Pemesan",
              ),
              CommonText(
                margin: EdgeInsets.symmetric(horizontal: 10),
                text: "08777534534",
                textStyle: TextStyle(fontSize: 18),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Checkbox(
                      value: valuefirst,
                      onChanged: (bool? value) {
                        setState(() {
                          valuefirst = value!;
                        });

                      }),
                  CommonText(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    text: "Pemesan adalah penumpang",
                  ),
                ],
              ),
              GroupSeparator(
                width: size.width,
                cabang: "Penumpang",
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14,vertical: 8),
                child:TextField(
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                    hintText: "Penumpang 1",
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.green
                          )
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child:ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  onPressed: ()=>print("d"),
                  child: Text("PILIH"),
                ),
              )
            ],
          ),
          primary: true,
        )
      ),
    );
    throw UnimplementedError();
  }
}

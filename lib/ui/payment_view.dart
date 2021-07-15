import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/constanta/Value.dart';
import 'package:uilight/model/pembayaran_model.dart';
import 'package:uilight/ui/widgets/common_colapse.dart';
import 'package:uilight/ui/widgets/common_text.dart';
import 'package:uitypo/common_main_canvas.dart';

class PaymentView extends StatefulWidget{
  @override
  _PaymentViewState createState()=> _PaymentViewState();
}
class _PaymentViewState extends State<PaymentView>{
  Value _data = new Value();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonMainCanvas(
      title: Text("Pembayaran"),
      appBarBgColor: bgcolor,
      body:SafeArea(
        child:Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
              child:Row(
                children: [
                  Icon(Icons.card_giftcard,size: 30,),
                  Expanded(
                    child: CommonText(
                      text: "Punya kode voucher?",
                      textStyle: TextStyle(fontSize: 18,color: Colors.grey),
                      margin: EdgeInsets.symmetric(horizontal: 5),
                    ),
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,

                    ),
                    onPressed: () {  },
                    child: Text("GUNAKAN"),
                  )
                ],
              ),
            ),
            Expanded(
              child:ListView.builder(
                shrinkWrap: true,
                itemCount: _data.metode.length,
                itemBuilder: (context,idx){
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0.0),
                    child: Column(
                      children: <Widget>[
                        ExpansionTile(
                          collapsedBackgroundColor: Colors.grey,
                          iconColor: Colors.grey,
                          textColor: Colors.black54,
                          initiallyExpanded: true,
                          title: Text(
                            "${_data.metode[idx].metode}",
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          children:data_list(_data.metode[idx].data),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(20),
                color: bgcolor,
                child: Row(
                  children: [
                    Expanded(
                      child:Text(
                        "Harga Total",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child:Text(
                        "Rp 20.000",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              )
            )
          ],
        )
      ),
    );
    throw UnimplementedError();
  }

  void show_alert(BuildContext context, String? namaMetode){
    showDialog(
      barrierDismissible: false,
        context: context,
        builder: (_) => new AlertDialog(
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                print("Move");
              },
              child: Text("Ok"),
            )

          ],
          shape: RoundedRectangleBorder(
              borderRadius:
              BorderRadius.all(
                  Radius.circular(10.0))),
          content: Builder(
            builder: (context) {
              // Get available height and width of the build area of this widget. Make a choice depending on the size.
              var height = MediaQuery.of(context).size.height;
              var width = MediaQuery.of(context).size.width;

              return Container(
                height: height - 5,
                width: width - 10,
                child: Column(
                  children: [
                    Text("Cara Pembayaran ${namaMetode}",style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 13,),
                    Center(
                      child: Text("Content"),
                    )
                  ],
                ),
              );
            },
          ),
        )
    );
  }
  List<Widget> data_list(List<Datum> data){
    final children = <Widget>[];
    for(var a in data){
      children.add(
        ListTile(
          onTap: ()=>show_alert(context,a.namaMetode),
          title: Text("${a.namaMetode}"),
          trailing: Container(
            width: 60,
            height: 60,
            child:Image.network("${a.image}"),
          ),
        )
      );
    }
    return children;
  }
}
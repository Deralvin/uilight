import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/ui/home_view.dart';
import 'package:uilight/ui/widgets/CommonButton.dart';
import 'package:uilight/ui/widgets/common_text.dart';
import 'package:uitypo/common_main_canvas.dart';

class PemesananSuccessView extends StatefulWidget{
  @override
  _PemesananSuccessView createState()=> _PemesananSuccessView();
}

class _PemesananSuccessView extends State<PemesananSuccessView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonMainCanvas(
      title: Text("Pemesanan Berhasil"),
      appBarBgColor: bgcolor,
      body:SafeArea(
        child: Container(
          color:  CupertinoTheme.of(context).barBackgroundColor,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: 200,
                color: Colors.white,
                child: Column(
                  children: [
                    CommonText(text: "Cara Pembayaran GO-PAY",textStyle: TextStyle(fontWeight: FontWeight.bold),margin: EdgeInsets.symmetric(vertical: 8),),
                    Text("CONTENT")
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child:Icon(Icons.wallet_membership_outlined,color: Colors.black54,),
                          margin: EdgeInsets.only(right: 15),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(text: "Cara Pembayaran GO-PAY",margin: EdgeInsets.symmetric(vertical: 4),textStyle:TextStyle(color: Colors.grey)),
                            CommonText(text: "GPYA2423003",textStyle:TextStyle(fontSize: 19,color: Colors.grey),margin: EdgeInsets.symmetric(vertical: 4),),
                          ],
                        ),

                      ],
                    ),
                    Divider(color: Colors.grey,),
                    Row(
                      children: [
                        Container(
                          child:Icon(Icons.qr_code,color: Colors.black54,),
                          margin: EdgeInsets.only(right: 15),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonText(text: "Kode Booking",margin: EdgeInsets.symmetric(vertical: 4),textStyle:TextStyle(color: Colors.grey)),
                            CommonText(text: "BAOS298882K247",textStyle:TextStyle(fontSize: 19,color: Colors.grey),margin: EdgeInsets.symmetric(vertical: 4),),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ),
              Container(
                  margin:EdgeInsets.symmetric(vertical: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child:Icon(Icons.money,color: Colors.black54,),
                            margin: EdgeInsets.only(right: 15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(text: "Harga Tiket",margin: EdgeInsets.symmetric(vertical: 4),textStyle:TextStyle(color: Colors.grey)),
                              CommonText(text: "Rp. 20.000",textStyle:TextStyle(fontSize: 19,color: Colors.grey),margin: EdgeInsets.symmetric(vertical: 4),),
                            ],
                          ),

                        ],
                      ),
                      Divider(color: Colors.grey,),
                      Row(
                        children: [
                          Container(
                            child:Icon(Icons.price_change,color: Colors.black54,),
                            margin: EdgeInsets.only(right: 15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(text: "Diskon",margin: EdgeInsets.symmetric(vertical: 4),textStyle:TextStyle(color: Colors.grey)),
                              CommonText(text: "Rp. 0",textStyle:TextStyle(fontSize: 19,color: Colors.grey),margin: EdgeInsets.symmetric(vertical: 4),),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey,),
                      Row(
                        children: [
                          Container(
                            child:Icon(Icons.price_change,color: Colors.black54,),
                            margin: EdgeInsets.only(right: 15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(text: "Biaya Layanan",margin: EdgeInsets.symmetric(vertical: 4),textStyle:TextStyle(color: Colors.grey)),
                              CommonText(text: "Rp. 0",textStyle:TextStyle(fontSize: 19,color: Colors.grey),margin: EdgeInsets.symmetric(vertical: 4),),
                            ],
                          ),
                        ],
                      ),
                      Divider(color: Colors.grey,),
                      Row(
                        children: [
                          Container(
                            child:Icon(Icons.shopping_bag,color: Colors.black54,),
                            margin: EdgeInsets.only(right: 15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(text: "Total bayar",margin: EdgeInsets.symmetric(vertical: 4),textStyle:TextStyle(color: Colors.grey)),
                              CommonText(text: "Rp. 20.000",textStyle:TextStyle(fontSize: 19,color: Colors.grey),margin: EdgeInsets.symmetric(vertical: 4),),
                            ],
                          ),
                        ],
                      )


                    ],
                  )
              ),
              Container(
                  margin:EdgeInsets.symmetric(vertical: 7),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            child:Icon(Icons.account_balance_wallet,color: Colors.black54,),
                            margin: EdgeInsets.only(right: 15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(text: "Metode Pembayaran",margin: EdgeInsets.symmetric(vertical: 4),textStyle:TextStyle(color: Colors.grey)),
                              CommonText(text: "GO-PAY",textStyle:TextStyle(fontSize: 19,color: Colors.grey),margin: EdgeInsets.symmetric(vertical: 4),),
                            ],
                          ),

                        ],
                      ),
                      Divider(color: Colors.grey,),
                      Row(
                        children: [
                          Container(
                            child:Icon(Icons.timer,color: Colors.black54,),
                            margin: EdgeInsets.only(right: 15),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CommonText(text: "Batas Waktu Pembayaran",margin: EdgeInsets.symmetric(vertical: 4),textStyle:TextStyle(color: Colors.grey)),
                              CommonText(text: "2021-07-19 09:55:51",textStyle:TextStyle(fontSize: 19,color: Colors.green),margin: EdgeInsets.symmetric(vertical: 4),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 8),
                child: CommonButton(
                  buttonStyle: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.green)
                  ),
                  title: "BAYAR",
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                        HomeView()), (Route<dynamic> route) => false);
                  },
                )
              )
            ],
          ),
        ),
      ),

    );
    throw UnimplementedError();
  }

}

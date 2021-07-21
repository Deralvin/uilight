import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/ui/pemesanan_success_view.dart';
import 'package:uilight/ui/widgets/CommonButton.dart';
import 'package:uilight/ui/widgets/common_text.dart';
import 'package:uitypo/common_main_canvas.dart';

class KonfirmasiView extends StatefulWidget{
  @override
  _KonfirmasiViewState createState()=> _KonfirmasiViewState();
}

class _KonfirmasiViewState extends State<KonfirmasiView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonMainCanvas(
      title: Text("Konfirmasi"),
      appBarBgColor: bgcolor,
      body:SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
          color: Color(0xffFAFAFA),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(

                margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonText(text: "Data Keberangkatan",textStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Operator",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "AoShuffle",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Keberangkatan",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "LIVING HARAPAN INDAH",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Tujuan",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "LIVING PLAZA JABABEKA",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Penumpang",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "1 Pemumpang",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Tanggal",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "Selasa,20 Juli 2021",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Jam",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "15:15",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "No Kursi",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "6",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      SizedBox(height:10,),
                      CommonText(text: "Harga Tiket",textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Harga",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "Rp. 20.000",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Diskon",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "Rp. 0",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Biaya Layanan",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "Rp. 0",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Total",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "Rp. 20.000",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Pembayaran",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "GO-PAY",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      SizedBox(height:10,),
                      CommonText(text: "Data Pemesan",textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Nama",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "Test",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Email",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "test@gmail.com",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Biaya Handphone",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "0817277273",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child:CommonText(text: "Penumpang",textStyle: TextStyle(fontSize: 16),),
                          ),
                          CommonText(text: ":",textStyle: TextStyle(fontSize: 16),),
                          Expanded(
                            child:CommonText(text: "Test",textStyle: TextStyle(fontSize: 16),),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
              SizedBox(height: 10,),
              CommonButton(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 8),
                buttonStyle: ButtonStyle(
                  backgroundColor:  MaterialStateProperty.all<Color>(Colors.green),
                ),
                title: "PESAN SEKARANG",
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>PemesananSuccessView())),
              )
            ],
          ),
        ),
      ) ,
    );
    throw UnimplementedError();
  }

}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListJurusanWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("LIVING HARAPAN INDAH - LIVING PLAZA JABABEKA",style: TextStyle(color: Colors.black54),),
                SizedBox(height: 14,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "15.15 ",
                        style: TextStyle(color: Colors.red),
                      ),
                      TextSpan(
                          text: "(Estimasi perjalanan 1 jam)",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Tersedia ",
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextSpan(
                        text: "11 ",
                        style: TextStyle(color: Colors.red),
                      ),
                      TextSpan(
                        text: "Kursi",
                        style: TextStyle(color: Colors.grey),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 5,),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 3,horizontal: 6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)), //here
                      color: Colors.black,
                      ),
                  child: Text("EXTERNAL",style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
          Text("Rp. 20.000",style: TextStyle(color: Colors.red,fontSize: 18),),
          Divider()
        ],
      ),
    );
    throw UnimplementedError();
  }
  
}
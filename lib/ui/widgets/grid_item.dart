import 'package:flutter/material.dart';
import 'package:uilight/model/seat_model.dart';

import 'common_text.dart';

class GridViewItem extends StatelessWidget {

  final Petalayout value;
  final bool _isSelected;


  GridViewItem( this._isSelected, this.value);

  @override
  Widget build(BuildContext context) {
    if(value.status=="block"){
          return Container(

            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Colors.grey)
            ),

            child:Center(
                child:CommonText(
                  text: "${value.count}",
                  textStyle: TextStyle(
                      color: Colors.white,
                    fontSize: 17
                  ),
                )
            ));
    }else if(value.status == "x"){
      return
          Container(

            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Colors.white)
            ),
      );
    }else if(value.status == 'p'){
        return Container(

            margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            decoration: BoxDecoration(
                color: _isSelected ? Colors.orange:Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Colors.grey)
            ),

            child:Center(
                child:CommonText(
                  text: "${value.count}",
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 17
                  ),
                )
            ));
    }else{
      return
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
      );
    }

  }
}
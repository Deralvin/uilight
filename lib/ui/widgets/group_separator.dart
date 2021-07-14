import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupSeparator extends StatelessWidget{
  final String? cabang;

  const GroupSeparator({Key? key, this.cabang}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      color: Colors.black38  ,
      child: Padding(
        padding: EdgeInsets.only(left: 5, top: 8, bottom: 8),
        child: Text(
          "$cabang",
          style: TextStyle( fontWeight: FontWeight.bold),
        ),
      ),
    );
    throw UnimplementedError();
  }

}
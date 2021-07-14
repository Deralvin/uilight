import 'package:flutter/cupertino.dart';

class GroupSeparator extends StatelessWidget{
  final String? cabang;

  const GroupSeparator({Key? key, this.cabang}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: Padding(
        padding: EdgeInsets.only(left: 16, top: 8, bottom: 8),
        child: Text(
          "$cabang",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
    throw UnimplementedError();
  }

}
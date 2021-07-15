import 'package:flutter/cupertino.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/ui/widgets/group_separator.dart';
import 'package:uitypo/common_main_canvas.dart';

class PenumpangView extends StatefulWidget{
  @override
  _PenumpangViewState createState()=> _PenumpangViewState();
}

class _PenumpangViewState extends State<PenumpangView>{

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // TODO: implement build
    return CommonMainCanvas(
      title: Text("Penumpang"),
      appBarBgColor: bgcolor,
      body: SafeArea(
        child: Column(
          children: [
            GroupSeparator(
              width:size.width ,
              cabang: "Pemesan",
            ),
            Text("")
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }

}
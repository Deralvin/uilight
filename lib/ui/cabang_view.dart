import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/ui/widgets/group_separator.dart';
import 'package:uitypo/common_main_canvas.dart';
import 'package:uilight/constanta/Value.dart';
class CabangView extends StatefulWidget{
  @override
  _CabangViewState createState()=> _CabangViewState();
}

class _CabangViewState extends State<CabangView>{
  Value _value =  new Value();
  @override
  Widget build(BuildContext context) {
    return CommonMainCanvas(
      title: Text("Pilih Cabang"),
      appBarBgColor: bgcolor,
      body: Container(
        child:GroupedListView<dynamic, String>(
          elements: _value.jurusanawal,
          groupBy: (transaction) {
            return transaction.cabang;
          },
          // start of new code
          groupSeparatorBuilder: (String cabang) => GroupSeparator(cabang: cabang,),
          // end of new code
          order: GroupedListOrder.ASC,
          itemBuilder: (context, dynamic transaction) => Card(
            child: ListTile(
              title: Text(transaction.jurusan),
              trailing: Text(
                "\$ 22",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }

}
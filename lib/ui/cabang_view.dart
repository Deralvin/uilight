import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/model/jurusan_model.dart';
import 'package:uilight/ui/widgets/group_separator.dart';
import 'package:uitypo/common_main_canvas.dart';

class CabangView extends StatefulWidget {
  final List<JurusanModel> value;

  const CabangView({Key? key,required this.value}) : super(key: key);
  @override
  _CabangViewState createState() => _CabangViewState();
}

class _CabangViewState extends State<CabangView> {
  @override
  Widget build(BuildContext context) {
    return CommonMainCanvas(
        title: Text("Pilih Cabang"),
        appBarBgColor: bgcolor,
        body: Container(
          child: GroupedListView<dynamic, String>(
            elements: widget.value,
            groupBy: (transaction) {
              return transaction.cabang;
            },
            // start of new code
            groupSeparatorBuilder: (String cabang) => GroupSeparator(
              cabang: cabang,
            ),
            // end of new code
            order: GroupedListOrder.ASC,
            itemBuilder: (context, dynamic transaction) => InkWell(
              onTap: (){
                print(transaction.jurusan);
                Navigator.pop(context,transaction.jurusan);
              },
                child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      transaction.jurusan,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(transaction.singkatan),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      transaction.alamat,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
            )),
          ),
        ));
    // TODO: implement build
    throw UnimplementedError();
  }
}

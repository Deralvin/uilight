import 'package:flutter/cupertino.dart';
import 'package:uilight/constanta/Colors.dart';
import 'package:uilight/ui/widgets/list_jurusan_widget.dart';
import 'package:uitypo/common_main_canvas.dart';

class ScheduleView extends StatefulWidget{
  @override
  _ScheduleViewState createState()=> _ScheduleViewState();
}

class _ScheduleViewState extends State<ScheduleView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonMainCanvas(
      title: Text("Pilih Jadwal"),
      appBarBgColor: bgcolor,
      body: SafeArea(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context,idx){
            return ListJurusanWidget();
          },
        ),
      ),
    );
    throw UnimplementedError();
  }

}
import 'package:flutter/cupertino.dart';

class CommonText extends StatelessWidget{
  final String text;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  const CommonText({Key? key, required this.text, this.margin, this.textStyle, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: padding,
      margin: margin,
      child: Text(text,style: textStyle,),
    );
    throw UnimplementedError();
  }

}
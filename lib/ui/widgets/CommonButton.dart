import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget{
  final String title;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final VoidCallback onPressed;
  final ButtonStyle? buttonStyle;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
  const CommonButton({Key? key,required this.title,required this.onPressed, this.margin, this.padding, this.textStyle, this.buttonStyle, this.width, this.height}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: width,
      height: height,
      margin:margin,
      padding:padding,
      child: ElevatedButton(
        style:buttonStyle,
        onPressed: onPressed,
        child: Text(title,style: textStyle,),
      ),
    );
    throw UnimplementedError();
  }

}
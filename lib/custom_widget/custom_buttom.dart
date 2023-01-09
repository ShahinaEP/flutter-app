import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({Key? key, required this.btnName, this.iconName, this.bgColor, this.textStyle, this.callback}) : super(key: key);
  final String btnName;
  final Icon? iconName;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          callback!();
        },
        child: iconName!= null? Row(
            children: [
              iconName!,
              Text(btnName)
            ]
        ): Text(btnName, style: textStyle,),
        style: ElevatedButton.styleFrom(
        backgroundColor: bgColor
    ),
    );
  }
}

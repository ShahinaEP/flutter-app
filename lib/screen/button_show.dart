import 'package:flutter/material.dart';
import 'package:flutter_larning_project/custom_widget/custom_buttom.dart';


class ShowCustomWidget extends StatefulWidget {
  const ShowCustomWidget({Key? key}) : super(key: key);

  @override
  State<ShowCustomWidget> createState() => _ShowCustomWidgetState();
}

class _ShowCustomWidgetState extends State<ShowCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 300,),
        CustomButtom(
          btnName: 'Login',
          bgColor: Colors.cyan,
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          callback: (){
            print("object");
          },
        ),

        CustomButtom(
          btnName: 'Icon',
          iconName: const Icon(Icons.ac_unit_sharp),
          bgColor: Colors.cyan,
          textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
          callback: (){
            print("object");
          },
        ),
      ],
    );
  }

}


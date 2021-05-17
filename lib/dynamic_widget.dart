import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamicWidget extends StatelessWidget {
  TextEditingController controller =  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:  EdgeInsets.all(8.0),
      child:  TextField(
        controller: controller,
        decoration:  InputDecoration(hintText: 'Enter Data '),
      ),
    );
  }
}
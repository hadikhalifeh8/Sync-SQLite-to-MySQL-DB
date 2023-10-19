import 'package:flutter/material.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextEditingController mycontroller;
  const CustomTextFormAuth({super.key, required this.hintText, required this.labelText, required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return    Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
          child:
         TextFormField(
          controller: mycontroller,
          
          
          decoration: InputDecoration(

          border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
              label:Text(labelText),
              hintText: hintText,
              
              
              ) ,)
         ,);
  }
}
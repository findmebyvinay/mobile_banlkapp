import 'package:flutter/material.dart';

class Textformfield extends StatelessWidget {
  TextInputType keyboardtype;
  FocusNode focusnode;
  Widget prefixIcon;
  bool obscureText;
  String hint;
  String label;
  Textformfield({required this.keyboardtype, required this.focusnode, required this.prefixIcon, required this.obscureText, required this.hint,required this.label, super.key});
  

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
        keyboardType: keyboardtype,
                     focusNode: focusnode,
                      obscureText: obscureText,
                      style:const TextStyle(
                        color: Colors.black
                      ),
                    decoration: InputDecoration(
                      prefixIcon: prefixIcon,
                     prefixIconColor: Colors.black,
                   hintStyle:const  TextStyle(
                    color: Colors.black,
                   ),
                    hintText:hint,
                    labelStyle:const TextStyle(
                      color: Colors.black
                    ),
                    labelText:label,
                    // label:Icon(Icons.mail,
                    // color: Colors.blueAccent,),
                    border:const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )
                    )
                    ),
                    );
  }
}
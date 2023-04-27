
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GetTextFormField extends StatelessWidget {
   TextEditingController? controller;
   String? labelName;
   IconData? icon;
   bool isObscureText;


   GetTextFormField({super.key ,this.controller,  this.labelName , this.icon , this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8, ),
                child: TextFormField(
                 keyboardType: TextInputType.emailAddress,
                 cursorColor: const Color(0xFFC87626),
                 obscureText: isObscureText,
                 controller: controller,
                 validator: (value) {
                   if (value == null || value.isEmpty) {
                    return "Please Enter $labelName";
                     
                   }
                   return null;
                 },
                 decoration: InputDecoration(
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.8, 
                      color: Colors.black
                    ), 
                  ),
                     labelText: labelName,
                     focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color:  Color(0xFFC87626),
                      )
                     ),
                     labelStyle: const TextStyle(
                      fontSize: 15,
                      color: Color(0xFF000033)
                     ),
                     prefixIcon:  Icon(icon,
                      color: const Color(0xFF000033),
                      size: 15,
                          ),
                        ),
                      ),
              );
  }
}
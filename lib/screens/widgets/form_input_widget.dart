import 'package:flutter/material.dart';
import 'package:labcse25/constants/size.dart';

class FromInputWidget extends StatelessWidget {
  var hint;
  var obscure;
  // TODO : Add TextInputType
  // write constructor
  FromInputWidget({
    this.hint,
    this.obscure = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: w * 45,
      width: w * 270,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10 * w),
        border: Border.all(
          color: Colors.blueAccent,
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.blueGrey.withOpacity(0.1),
        //     spreadRadius: w * 1,
        //     blurRadius: w * 1,
        //   ),
        // ],
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 12 * w, right: 12 * w),
        child: TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            border: InputBorder.none,
            // labelText: 'Email',
            hintText: hint,
          ),
        ),
      ),
    );
  }
}

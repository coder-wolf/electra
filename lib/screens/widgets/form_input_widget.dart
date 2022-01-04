import 'package:flutter/material.dart';
import 'package:labcse25/constants/size.dart';

class FromInputWidget extends StatelessWidget {
  var title;
  var hint;
  // TODO : Add TextInputType
  // write constructor
  FromInputWidget({
    this.title,
    this.hint,
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
    );
  }
}

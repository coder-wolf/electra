// redirect from here to user- appropriate page..
// 1. admin
// 2. consumer
// 3. manager
// 4. biller

import 'package:flutter/material.dart';
import './../../models/user_model.dart';

class HomePage extends StatelessWidget {
  var user;
  HomePage(this.user);

  @override
  Widget build(BuildContext context) {
    if (user.userType == 1) {
      return Container(); // return Admin page
    } else if (user.userType == 2) {
      return Container(); // return Manager page
    } else if (user.userType == 3) {
      return Container(); // return Biller page
    } else {
      return Container(); // Consumer page
    }
  }
}

import 'package:flutter/material.dart';

class SignUpSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("Sign Up Successful. You can login to your account."),
              MaterialButton(
                child: Text("Go to Login Page"),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

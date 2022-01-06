import 'package:flutter/material.dart';
import 'package:labcse25/constants/size.dart';
import 'package:labcse25/screens/widgets/form_input_widget.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;

class LoginPage extends StatelessWidget {
  void Login(email, password) async {
    final firebaseUser = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: w * 300,
              height: double.infinity,
              color: Color(0xff5E69F1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 50 * w, left: 30 * w, right: 30 * w),
                    child: Text(
                      "Electrictiy\nBilling System",
                      style: TextStyle(
                        fontSize: 30 * w,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30 * w,
                      right: 45 * w,
                      top: 19 * w,
                    ),
                    child: Text(
                      "Manage your \nelecricity bill with ease",
                      style: TextStyle(
                        fontSize: 19 * w,
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 30 * w,
                      right: 45 * w,
                      top: 15 * w,
                      bottom: 30 * w,
                    ),
                    child: Row(
                      children: [
                        Text(
                          "FeedBack",
                          style: TextStyle(
                            fontSize: 10 * w,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Support",
                          style: TextStyle(
                            fontSize: 10 * w,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Learn More",
                          style: TextStyle(
                            fontSize: 10 * w,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: w * 700,
              height: double.infinity,
              child: Row(
                children: [
                  Spacer(),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40 * w),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 35 * w,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueAccent,
                          ),
                        ),
                        SizedBox(
                          height: 15 * w,
                        ),
                        FromInputWidget(hint: "Email"),
                        SizedBox(
                          height: 15 * w,
                        ),
                        FromInputWidget(
                          hint: "Password",
                          obscure: true,
                        ),
                        SizedBox(
                          height: 20 * w,
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, '/login/view_bill');
                              },
                              child: Container(
                                height: w * 45,
                                width: w * 120,
                                decoration: BoxDecoration(
                                  color: Color(0xff6069E9),
                                  borderRadius: BorderRadius.circular(30 * w),
                                ),
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                      fontSize: 15 * w,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20 * w,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              child: Text(
                                "Apply for connection",
                                style: TextStyle(
                                  fontSize: 15 * w,
                                  // fontWeight: FontWreight.bold,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20 * w,
                        ),
                        SizedBox(height: 40 * w),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

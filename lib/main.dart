import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import 'package:labcse25/auth/auth_service.dart';
import 'package:labcse25/constants/size.dart';
import 'package:labcse25/screens/error_login.dart';
import 'package:labcse25/screens/login/login_page.dart';
import 'package:labcse25/screens/signup/signup.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import 'screens/admin/admin_page.dart';
import 'screens/consumer/view_bill.dart';
import 'screens/post_signup_page/success.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(Electra());
}

class Electra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges,
          initialData: [],
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => AuthenticationWrapper(),
          '/login': (context) => LoginPage(),
          '/signup': (context) => SignUpPage(),
          '/login/view_bill': (context) => ViewBillPage(),
          '/login/error': (context) => LoginError(),
          '/login/admin': (context) => AdminPage(),
          'signup/success': (context) => SignUpSuccess(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width * (1 / 1000);

    final firebaseUser = context.watch<User?>();

    // return LoginPage();
    if (firebaseUser == null) {
      return LoginPage();
    } else {
      return ViewBillPage();
    }
  }
}

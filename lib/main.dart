import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:kibabii_rent/firebase_options.dart';
import 'login_page.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(LoginSignupApp());
}

class LoginSignupApp extends StatelessWidget {
  const LoginSignupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kibu renting system',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

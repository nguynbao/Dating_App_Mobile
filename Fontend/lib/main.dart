
import 'package:flutter/material.dart';
import 'package:dating_app/features/home/view/Login/Login_view.dart';
import 'package:dating_app/screen/splash/splash_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dating App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/home': (context) => Login(),
      },
    );
  }
}

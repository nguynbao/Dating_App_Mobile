import 'package:flutter/material.dart';

class LogoCompo extends StatelessWidget {
  const LogoCompo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade500,
                  Colors.purple.shade500,
                ], // Tùy chỉnh màu nền gradient
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Center(
              child: Image.asset(
                'assets/images/Logo_main.png',
                width: 200,
                height: 150,
              ),
            ),
          ),],
      ),
    );
  }
}
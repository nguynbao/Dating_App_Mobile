import 'package:flutter/material.dart';
import '/features/home/view/signup/Signup_view.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _rememberPassword = false; // Biến để lưu trạng thái checkbox
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
          ),
          Positioned(
            bottom: -15,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Welcome to Back',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Login to continue',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'username',
                        border: null,
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'password',
                        border: null,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberPassword,
                          onChanged: (bool? newValue) {
                            setState(() {
                              _rememberPassword = newValue!;
                            });
                          },
                        ),
                        const Text(
                          'Remember Password',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Xử lý sự kiện khi nút được nhấn
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(319, 60),
                          backgroundColor: Colors.blue.shade500,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    Center(
                      child: Column(
                        children: [
                          Text("Did you forget your password?"),
                          TextButton(
                            onPressed: () {
                              // Xử lý sự kiện khi nút được nhấn
                            },
                            child: Text(
                              'Reset Here',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.blue.shade500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignupView(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(319, 60),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              color: Colors.blue,
                              width: 1.5,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(fontSize: 16, color: Colors.blue),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                    Center(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

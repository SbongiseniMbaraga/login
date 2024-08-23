import 'package:flutter/material.dart';
import 'login_brain.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final TextEditingController _controller = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  LoginBrain login = LoginBrain();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/back.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 80.0,
                    foregroundImage: AssetImage('images/anng.jpeg'),
                  ),
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: TextField(
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'UNSERNAME',
                          prefixIcon: Icon(Icons.person),
                          filled: true,
                          fillColor: Colors.white),
                      controller: _controller,
                    ),
                  ),
                  SizedBox(
                    width: 400,
                    height: 80,
                    child: TextField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'PASSWORD',
                        prefixIcon: Icon(Icons.lock),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      controller: _controller2,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String username = _controller.text;
                      String userPassword = _controller2.text;

                      login.validate(username, userPassword);
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 160.0, vertical: 20.0),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

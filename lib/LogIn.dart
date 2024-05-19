import 'package:flutter/material.dart';
import 'package:student_app/BackColor.dart';
import 'package:student_app/Footer.dart';
import 'package:student_app/Registration.dart';
import 'package:student_app/Department.dart';
import 'package:http/http.dart' as http;
import 'package:student_app/api.dart';
import 'dart:convert';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginApi() async {
    final response = await http.post(
      Uri.parse('http://${Api_name().api}/Student_app/login.php'),
      body: jsonEncode(<String, dynamic>{
        "Email": emailController.text,
        "password": passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      if (data['success']) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Department()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login failed: ${data['message']}')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${response.body}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackColor(), // Gradient background
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 150),
                  Image.asset(
                    'assets/baiust.png',
                    fit: BoxFit.contain,
                    height: 80,
                  ),
                  const SizedBox(height: 60),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    height: 250,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          maxLength: 50,
                          decoration: const InputDecoration(
                            labelText: 'Enter your Gmail',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                            counterText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          controller: passwordController,
                          maxLength: 50,
                          decoration: const InputDecoration(
                            labelText: 'Enter your Password',
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                            counterText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                      builder: (context) => const Registration()),
                                );
                              },
                              child: const Text('Register'),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: loginApi,
                              child: const Text('Log In'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

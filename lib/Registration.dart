import 'package:flutter/material.dart';
import 'package:student_app/Footer.dart';
import 'package:student_app/LogIn.dart';
import 'package:student_app/BackColor.dart';
import 'package:http/http.dart' as http;
import 'package:student_app/api.dart';
import 'dart:convert';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController nameController = TextEditingController();
  TextEditingController departmentController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController designationController = TextEditingController();
  TextEditingController password1Controller = TextEditingController();
  TextEditingController password2Controller = TextEditingController();
  TextEditingController createdByController = TextEditingController();

  String? password;

  insertApi() async {
    if (password1Controller.text != password2Controller.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }

    password = password1Controller.text;

    final response = await http.post(
      Uri.parse('http://${Api_name().api}/Student_app/insert.php'),
      body: jsonEncode(<String, dynamic>{
        "Name": nameController.text,
        "Department": departmentController.text,
        "Email": emailController.text,
        "Designation": designationController.text,
        "password": password,
        "created_by": createdByController.text,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const LogIn()),
      );
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
          const BackColor(), // Background gradient
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  Image.asset(
                    'assets/baiust.png', // Change the path to your logo image
                    fit: BoxFit.contain,
                    height: 80,
                  ),
                  const SizedBox(height: 60),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          maxLength: 50,
                          controller: nameController,
                          decoration: const InputDecoration(
                            labelText: 'Enter your Name',
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
                        const SizedBox(height: 10),
                        TextFormField(
                          maxLength: 50,
                          controller: departmentController,
                          decoration: const InputDecoration(
                            labelText: 'Enter your Department',
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
                        const SizedBox(height: 10),
                        TextFormField(
                          maxLength: 50,
                          controller: emailController,
                          decoration: const InputDecoration(
                            labelText: 'Enter your Email',
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
                        const SizedBox(height: 10),
                        TextFormField(
                          maxLength: 50,
                          controller: designationController,
                          decoration: const InputDecoration(
                            labelText: 'Enter your Designation',
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
                        const SizedBox(height: 10),
                        TextFormField(
                          maxLength: 50,
                          controller: createdByController,
                          decoration: const InputDecoration(
                            labelText: 'Created By',
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
                        const SizedBox(height: 10),
                        TextFormField(
                          maxLength: 50,
                          controller: password1Controller,
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
                        const SizedBox(height: 10),
                        TextFormField(
                          maxLength: 50,
                          controller: password2Controller,
                          decoration: const InputDecoration(
                            labelText: 'Confirm your Password',
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
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                      builder: (context) => LogIn()),
                                );
                              },
                              child: const Text('Back'),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              onPressed: () {
                                insertApi();
                              },
                              child: const Text('Register'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
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

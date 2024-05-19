import 'package:flutter/material.dart';
import 'package:student_app/BackColor.dart';
import 'package:student_app/Footer.dart';
import 'package:http/http.dart' as http;
import 'package:student_app/api.dart';
import 'dart:convert';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  final List<String> departments = [
    'CSE',
    'EEE',
    'BBA',
    'CE',
    'English',
    'LAW',
    'Statics',
    'MBA'
  ];
  final List<String> sections = ['A', 'B', 'C'];
  final List<String> levelTerms = [
    'L1-T1',
    'L1-T2',
    'L2-T1',
    'L2-T2',
    'L3-T1',
    'L3-T2',
    'L4-T1',
    'L4-T2'
  ];
  final List<String> subjects = [
    'CSE-101',
    'CSE-102',
    'HUM-101',
    'HUM-102',
    'MATH-141',
    'CHEM-101',
    'CE-150',
    'PHY-103',
    'EEE-169',
    'EEE-170'
  ];
  String? selectedDepartment;
  String? selectedSection;
  String? selectedLevelTerm;
  String? selectedSubject;

  TextEditingController studentidController = TextEditingController();
  TextEditingController marksController = TextEditingController();

  Future<void> insertApi() async {
    final response = await http.post(
      Uri.parse('http://${Api_name().api}/Student_app/result.php'),
      body: jsonEncode(<String, dynamic>{
        "studentid": studentidController.text,
        "department": selectedDepartment,
        "levelterm": selectedLevelTerm,
        "section": selectedSection,
        "subject": selectedSubject,
        "marks": marksController.text,
      }),
    );

    if (response.statusCode == 200) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Result()),
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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 59, 206, 199),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/baiust.png',
              fit: BoxFit.contain,
              height: 35,
            ),
            const SizedBox(width: 1),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Welcome to Baiust",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            )
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 59, 206, 199),
      body: Stack(
        children: [
          const BackColor(),
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
                    height: 120,
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    height: 565,
                    width: 340,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        TextFormField(
                          maxLength: 50,
                          controller: studentidController,
                          decoration: const InputDecoration(
                            labelText: 'Enter Student Id',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                            counterText: '',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        DropdownButtonFormField<String>(
                          value: selectedDepartment,
                          decoration: const InputDecoration(
                            labelText: 'Select Department',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                          ),
                          items: departments.map((String department) {
                            return DropdownMenuItem<String>(
                              value: department,
                              child: Text(department),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedDepartment = newValue;
                            });
                          },
                        ),
                        const SizedBox(height: 15),
                        DropdownButtonFormField<String>(
                          value: selectedLevelTerm,
                          decoration: const InputDecoration(
                            labelText: 'Select Level-Term',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                          ),
                          items: levelTerms.map((String levelTerm) {
                            return DropdownMenuItem<String>(
                              value: levelTerm,
                              child: Text(levelTerm),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedLevelTerm = newValue;
                            });
                          },
                        ),
                        const SizedBox(height: 15),
                        DropdownButtonFormField<String>(
                          value: selectedSection,
                          decoration: const InputDecoration(
                            labelText: 'Select Section',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                          ),
                          items: sections.map((String section) {
                            return DropdownMenuItem<String>(
                              value: section,
                              child: Text(section),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedSection = newValue;
                            });
                          },
                        ),
                        const SizedBox(height: 15),
                        DropdownButtonFormField<String>(
                          value: selectedSubject,
                          decoration: const InputDecoration(
                            labelText: 'Select Subject',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                          ),
                          items: subjects.map((String subject) {
                            return DropdownMenuItem<String>(
                              value: subject,
                              child: Text(subject),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedSubject = newValue;
                            });
                          },
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          maxLength: 50,
                          controller: marksController,
                          decoration: const InputDecoration(
                            labelText: 'Enter Marks',
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                            counterText: '',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0)),
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 29, 126, 230),
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Back"),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton(
                              onPressed: () {
                                insertApi();
                              },
                              child: const Text('Submit'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
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

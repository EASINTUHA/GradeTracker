import 'package:flutter/material.dart';
import 'package:student_app/BackColor.dart';
import 'package:student_app/Footer.dart';
import 'package:student_app/Level_Term.dart';

class Department extends StatefulWidget {
  const Department({super.key});

  @override
  State<Department> createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {
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
            const SizedBox(
                width: 1),
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
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 60),
                  Image.asset(
                    'assets/baiust.png',
                    fit: BoxFit.contain,
                    height: 80,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Select Your Department',
                    style: TextStyle(
                      fontSize: 30, 
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 10.0, right: 10.0),
                    height: 435,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize:
                                            Size(10, 60),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        '   CSE   ',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300, 
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5), 
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        '   EEE   ',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 392,
                          child: Column(
                            children: [
                              Container(
                                width: 392,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom(  
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        'English',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom( 
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        '   BBA   ',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 392,
                          child: Column(
                            children: [
                              Container(
                                width: 392,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom( 
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        '  LAW  ',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom( 
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        '   Civil   ',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 392,
                          child: Column(
                            children: [
                              Container(
                                width: 392,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        '    Ict    ',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom( 
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        'Physics',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 392,
                          child: Column(
                            children: [
                              Container(
                                width: 392,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 32, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        '  Math ',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute<void>(
                                                builder: (context) =>
                                                    const Level_Term()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        minimumSize:
                                            Size(10, 60), 
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 24, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              5),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 59, 206, 199),
                                        elevation: 5,
                                      ),
                                      child: const Text(
                                        '    MBA   ',
                                        style: TextStyle(
                                          fontSize: 30, 
                                          fontWeight:
                                              FontWeight.w300,
                                          color:
                                              Color.fromARGB(255, 74, 10, 225),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
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

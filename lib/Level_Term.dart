import 'package:flutter/material.dart';
import 'package:student_app/BackColor.dart';
import 'package:student_app/Footer.dart';
import 'package:student_app/Subject.dart';

class Level_Term extends StatefulWidget {
  const Level_Term({super.key});

  @override
  State<Level_Term> createState() => _Level_TermState();
}

class _Level_TermState extends State<Level_Term> {
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
                    'Select Level-Term',
                    style: TextStyle(
                      fontSize: 30, 
                      fontWeight: FontWeight.w300,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
                    height: 740,
                    width: 350,
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
                                                    const Subject()));
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
                                        'Level 1 Term 1',
                                        style: TextStyle(
                                          fontSize: 35, 
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
                                                    const Subject()));
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
                                        'Level 1 Term 2',
                                        style: TextStyle(
                                          fontSize: 35, 
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
                                                    const Subject()));
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
                                        'Level 2 Term 1',
                                        style: TextStyle(
                                          fontSize: 35, 
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
                                                    const Subject()));
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
                                        'Level 2 Term 2',
                                        style: TextStyle(
                                          fontSize: 35,
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
                                                    const Subject()));
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
                                        'Level 3 Term 1',
                                        style: TextStyle(
                                          fontSize: 35, 
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
                                                    const Subject()));
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
                                        'Level 3 Term 2',
                                        style: TextStyle(
                                          fontSize: 35, 
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
                                                    const Subject()));
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
                                        'Level 4 Term 1',
                                        style: TextStyle(
                                          fontSize: 35,
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
                                                    const Subject()));
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
                                        'Level 4 Term 2',
                                        style: TextStyle(
                                          fontSize: 35,
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

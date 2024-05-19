import 'package:flutter/material.dart';

class BackColor extends StatefulWidget {
  const BackColor({super.key});

  @override
  State<BackColor> createState() => _BackColorState();
}

class _BackColorState extends State<BackColor> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(98, 241, 241, 148),
            Color.fromARGB(199, 153, 221, 238),
            Color.fromARGB(255, 167, 113, 229),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}

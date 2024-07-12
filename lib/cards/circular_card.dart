import 'package:flutter/material.dart';

class CircularCard extends StatelessWidget {
  final IconData icon;


  const CircularCard({
    Key? key,
    required this.icon,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
      
        height: 80,
        width: 80,
        child: Card(
          elevation: 5,
          shape: CircleBorder(side:BorderSide(
            color: Color.fromARGB(255, 137, 137, 137),
          ) ,),
          color: Colors.white,
          borderOnForeground: true,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
          ),
        ),
      ),
    );
  }
}
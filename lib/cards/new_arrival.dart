import 'package:flutter/material.dart';

class NewArrival extends StatelessWidget {

  const NewArrival({super.key,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 150,
        width: 200, // Adjust width as necessary
        child: Card(
          color: Color.fromRGBO(46, 46, 46, 1),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

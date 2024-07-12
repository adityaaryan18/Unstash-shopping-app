import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class B1g3Card extends StatelessWidget {
  const B1g3Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Card(
          elevation: 8,
          color: Color.fromRGBO(231, 227, 226, 1),
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: MyColumn(),
              ),
      
              // AN IMAGE
              // TO BE PLACED VIA API
      
            ],
          ),
        ),
      ),
    );
  }
}

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    int itemName = 4;
    return Column(
        children: List.generate(
      itemName,
      (index) {
        return Text("BUY 1 GET 3",
            style: GoogleFonts.oswald(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: index == 1
                    ? (Color.fromRGBO(52, 28, 11, 1))
                    : Colors.white));
      },
    ));
  }
}

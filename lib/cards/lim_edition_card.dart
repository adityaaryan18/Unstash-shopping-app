import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LimEditionCard extends StatelessWidget {
  const LimEditionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          gradient:  const LinearGradient(
            colors: [Color.fromRGBO(242,189,79,1), Color.fromRGBO(249,138,33,1)],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(
              10.0), // Add border radius to match Card's shape
        ),
        child: Card(
          color: Colors.transparent, // Ensure Card background is transparent
          elevation: 0 , // Remove shadow if desired
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5) ),
          child: Row(
            children: [
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns the column to the start
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        "NIKE",
                        style: GoogleFonts.fugazOne(fontSize: 22, color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "NEW LIMITED \nEDITION",
                      style: GoogleFonts.fugazOne(fontSize: 32, color: Colors.white),
                    ),
                  ),
                ],
              ),
      
              // AN IMAGE
              // VIA API
            ],
          ),
        ),
      ),
    );
  }
}

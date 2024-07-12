import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/cards/b1g3_card.dart';
import 'package:shop_app/cards/circular_card.dart';
import 'package:shop_app/cards/lim_edition_card.dart';
import 'package:shop_app/cards/new_arrival.dart';
import 'package:shop_app/cards/product_card_home.dart';

class HomePagemain extends StatefulWidget {

  HomePagemain({super.key});

  @override
  State<HomePagemain> createState() => _HomePageState();
}

class _HomePageState extends State<HomePagemain> {
  TextEditingController textEditingController = TextEditingController();

  var res;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 255, 255),
            title: Center(
                child: Text("UNSTASH",
                    style: GoogleFonts.zenDots(
                        fontWeight: FontWeight.bold, fontSize: 25)))),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        controller: textEditingController,
                        
                        decoration:
                        
                        const InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 149, 149, 149)),borderRadius: BorderRadius.all(Radius.circular(30))),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 149, 149, 149)),borderRadius: BorderRadius.all(Radius.circular(30))),
                          hintText: "  What's in your mind? "
                          
                        ),
                      ),
                    ),
                  ),
              
                  TextButton.icon(onPressed:(){
                    setState(() {
                      res=textEditingController;
                    });
                  }, label: Icon(Icons.search,color: Colors.black,))
                ],
              ),
              const SizedBox(
                width: double.infinity,
                height: 220,
                child: B1g3Card(),
              ),
              const SizedBox(
                  width: double.infinity, height: 220, child: LimEditionCard()),
               SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        
                        debugPrint("TAPPED");
                      },
                      child:  ProductCard(icon: Icons.discount, label: "Shoes")),
                    ProductCard(icon: Icons.discount, label: "Footwear"),
                    ProductCard(icon: Icons.discount, label: "Shirts"),
                    ProductCard(icon: Icons.discount, label: "T-Shirts"),
                    ProductCard(icon: Icons.discount, label: "Hoodies"),
                    ProductCard(icon: Icons.discount, label: "Jeans"),
                    ProductCard(icon: Icons.discount, label: "Trousers"),
                  ])),

              const SizedBox( width: double.infinity, height: 200, child: NewArrival(),
              ),

              SizedBox(height: 10,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text("   BRANDS", style: GoogleFonts.fugazOne(fontSize: 20,),)),

              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CircularCard(icon: Icons.air),
                    CircularCard(icon: Icons.air),
                    CircularCard(icon: Icons.air),
                    CircularCard(icon: Icons.air),
                    CircularCard(icon: Icons.air),
                    CircularCard(icon: Icons.air),

                  ],
                ),
              )
            ],
          ),
        ));
  }
}

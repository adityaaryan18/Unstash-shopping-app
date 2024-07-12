import 'package:flutter/material.dart';
import 'package:shop_app/pages/home_page.dart';

class ProductCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const ProductCard({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizedBox(
        
        height: 120,
        width: 110,
        child: GestureDetector(onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return HomePage();
          }));
        },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(side:BorderSide(
              color: Color.fromARGB(255, 137, 137, 137)
            ) ,borderRadius: BorderRadius.circular(15)),
            color: Colors.white,
            borderOnForeground: true,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Centers the content vertically
                children: [
                  SizedBox(height: 25,),
                  Icon(icon, size: 33,
                  ),
                  SizedBox( 
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(label,style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.bold, color: Colors.black),),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

 


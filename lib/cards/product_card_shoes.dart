import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/pages/global_variables.dart';
import 'package:shop_app/pages/product_detail_page.dart';

class ProductCardShoes extends StatelessWidget {
  final String title1;
  final String type1;
  final String real_price1;
  final String disc_price1;
  final String rating1;
  final String image1;

  final Map<String,Object>productx;
  final Map<String,Object>producty;

  final String title2;
  final String type2;
  final String real_price2;
  final String disc_price2;
  final String rating2;
  final String image2;

  const ProductCardShoes({
    super.key,
    required this.title1,
    required this.real_price1,
    required this.disc_price1,
    required this.image1,
    required this.rating1,
    required this.type1,
    required this.title2,
    required this.real_price2,
    required this.disc_price2,
    required this.image2,
    required this.rating2,
    required this.type2,

    required this.productx,
    required this.producty,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector
        (
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return ProductDetailPage(product: productx);
            }));
          },
            child: Card(
              color: Colors.white,
              elevation: 0, // Set elevation to 0
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Colors.grey.shade300), // Light grey border
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Card(
                          color: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              image1,
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Card(
                            color: Colors.white,
                            elevation: 4, // Add elevation to the ratings card
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 16),
                                  SizedBox(width: 2),
                                  Text(
                                    rating1,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      title1,
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold), // Bold title
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 4),
                    Text(
                      type1,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$$disc_price1",
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold), // Bold discount price
                        ),
                        Text(
                          "\$$real_price1",
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Card(
                          shape: CircleBorder(),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return ProductDetailPage(product: producty);
              }));
            },
            child: Card(
              color: Colors.white,
              elevation: 0, // Set elevation to 0
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
                side: BorderSide(color: Colors.grey.shade300), // Light grey border
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Card(
                          color: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              image2,
                              height: 100,
                              width: double.infinity,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Card(
                            color: Colors.white,
                            elevation: 4, // Add elevation to the ratings card
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.yellow, size: 16),
                                  SizedBox(width: 2),
                                  Text(
                                    rating2,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      title2,
                      style: GoogleFonts.roboto(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold), // Bold title
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 4),
                    Text(
                      type2,
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$$disc_price2',
                          style: GoogleFonts.roboto(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.bold), // Bold discount price
                        ),
                        Text(
                          '\$$real_price2',
                          style: GoogleFonts.roboto(
                              fontSize: 13,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Card(
                          shape: CircleBorder(),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.favorite_border,
                              size: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

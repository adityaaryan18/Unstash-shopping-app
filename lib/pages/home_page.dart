import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/cards/new_arrival.dart';
import 'package:shop_app/cards/product_card_shoes.dart';
import 'package:shop_app/pages/global_variables.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> filters = const [
    "All",
    "Adidas",
    "Nike",
    "Puma",
    "Sporty",
    "Zudio",
    "Trends",
  ];

  late String selectedFilter;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set a consistent white background
      appBar: AppBar(
        backgroundColor: Colors.white, // White background for AppBar
        elevation: 0, // Remove shadow of the AppBar
        title: Text(
          'Unstash',
          style: GoogleFonts.zenDots(
              fontSize: 24,
              color: Colors.black), // Ensure text color is visible on white
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_bag_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white, // White background for search bar
              automaticallyImplyLeading: false,
              floating: true,
              pinned: true, // Make the search bar stay at the top
              elevation: 0, // Remove shadow of the SliverAppBar
              flexibleSpace: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 60,
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 81, 81, 81),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 77, 77, 77),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 150, // Increase height of NewArrival card
                    child: PageView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) {
                        setState(() {
                          currentPage = index;
                        });
                      },
                      itemBuilder: (context, index) {
                        return const NewArrival();
                      },
                    ),
                  ),
                  // Dots indicator
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentPage == index ? Colors.black : Colors.grey,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: _SliverAppBarDelegate(
                child: Container(
                  color: Colors.white,
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: filters.length,
                      itemBuilder: (context, index) {
                        final name = filters[index];
                        final bool isSelected = selectedFilter == name;
                        return Padding(
                          padding: const EdgeInsets.only(left: 6, right: 6),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedFilter = name;
                              });
                            },
                            child: Chip(
                              side: BorderSide(
                                  color: isSelected
                                      ? Colors.black
                                      : Color.fromARGB(255, 160, 177, 180)),
                              backgroundColor:
                                  isSelected ? Colors.black : Colors.white,
                              elevation: 0, // Remove shadow of the Chip
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              label: Text(
                                name,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  // Ensure index+1 does not go out of bounds
                  if (index * 2 + 1 >= products.length) return null;

                  final product1 = products[index * 2];
                  final product2 = products[index * 2 + 1];

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: ProductCardShoes(
                      productx: product1,
                      producty: product2,
                      title1: product1['title'] as String,
                      real_price1: product1['real price'].toString(),
                      disc_price1: product1['disc_price'].toString(),
                      image1: product1['imageUrl'] as String,
                      type1: product1['type'] as String,
                      rating1: product1['rating'] as String,
                      title2: product2['title'] as String,
                      real_price2: product2['real price'].toString(),
                      disc_price2: product2['disc_price'].toString(),
                      image2: product2['imageUrl'] as String,
                      type2: product2['type'] as String,
                      rating2: product2['rating'] as String,
                    ),
                  );
                },
                childCount: (products.length / 2)
                    .ceil(), // Adjust child count accordingly
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _SliverAppBarDelegate({required this.child});

  @override
  double get minExtent => child is PreferredSizeWidget
      ? (child as PreferredSizeWidget).preferredSize.height
      : 70.0;

  @override
  double get maxExtent => child is PreferredSizeWidget
      ? (child as PreferredSizeWidget).preferredSize.height
      : 100.0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child;
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return oldDelegate.child != child;
  }
}

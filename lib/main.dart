import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_ui_test/rental_details.dart';
import 'package:shop_ui_test/signIn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RentalDetails(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: mediaHeight,
        width: mediaWidth,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//custom app bar
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: mediaHeight * 0.06,
            width: mediaWidth,
            color: Color(0xffC59B87),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xff35A2DD),
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
                SizedBox(
                  width: mediaWidth * 0.05,
                ),
                Text(
                  'New York, Zip Code: 10006',
                  style: TextStyle(color: Color(0xffF2F2F2)),
                ),
                SizedBox(
                  width: mediaWidth * 0.1,
                ),
                Image.asset(
                  'assets/images/edit_icon.png',
                  height: mediaHeight * 0.06 * 0.4,
                ),
                SizedBox(
                  width: mediaWidth * 0.1,
                ),
                Image.asset(
                  'assets/images/filter.png',
                  height: mediaHeight * 0.06 * 0.5,
                ),
              ],
            ),
          ),
//Search
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: Card(
              elevation: 10,
              //color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              child: SizedBox(
                height: mediaHeight * 0.055,
                width: mediaWidth,
                child: Row(children: [
                  Container(
                    margin: EdgeInsets.only(left: mediaWidth * 0.03),
                    child: Image.asset(
                      'assets/images/search_icon.png',
                      height: mediaHeight * 0.06 * 0.5,
                    ),
                  ),
                  SizedBox(
                    width: mediaWidth * 0.03,
                  ),
                  Text(
                    'Search products or services',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400, color: Color(0xffAFAFAF)),
                  ),
                ]),
              ),
            ),
          ),
//Browse by category
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Text(
                'Browse by Category',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff181717),
                    fontSize: 16),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Text(
                'View all',
                style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffF27712),
                    fontSize: 12),
              ),
            ]),
          ),
//Category tabs
          Container(
            height: mediaHeight * 0.07,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF0F0F0)),
                    ),
                    child: Text(
                      'Clothes',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Color(0xffAFAFAF),
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF0F0F0)),
                    ),
                    child: Text(
                      'Accesorries',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Color(0xffAFAFAF),
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffF0F0F0)),
                    ),
                    child: Text(
                      'Kids',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Color(0xffAFAFAF),
                          fontSize: 16),
                    ),
                  ),
                ]),
          ),
//Featured in your area
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Featured in your area',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff181717),
                  fontSize: 16),
            ),
          ),
//Featured items list
          SizedBox(
            height: mediaHeight * 0.01,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            height: mediaHeight * 0.35,
            width: mediaHeight * 0.3 * 0.85,
            child: Card(
              elevation: 10,
              child: Stack(
                children: [
                  Container(
                    height: mediaHeight * 0.3 * 0.8,
                    width: mediaHeight * 0.3 * 0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(20)),
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/feature1.png',
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    height: mediaHeight * 0.3 * 0.7,
                    width: mediaHeight * 0.3 * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(20)),
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/feature1.png',
                            ),
                            fit: BoxFit.fill)),
                  ),
                  Positioned(
                    top: mediaHeight * 0.3 * 0.7,
                    width: mediaHeight * 0.3 * 0.8,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 5),
                              child: Text(
                                'Casual shirt',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff181717),
                                    fontSize: 16),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(
                                'Shopee offers comfort and casual shirt for women.',
                                maxLines: 2,
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff181717),
                                    fontSize: 10),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5, top: 10),
                              child: Row(children: [
                                Text(
                                  '\$ 15,00 per day',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff181717),
                                      fontSize: 12),
                                ),
                                Expanded(
                                  child: SizedBox(),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Color(0xffF19B6B),
                                  ),
                                  child: Text(
                                    'ITEMS RENT',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffFFFFFF),
                                        fontSize: 8),
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                    ),
                  )
                ],
              ),
            ),
          ),
//Browse Listing
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              Text(
                'Browse listings in your area',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff181717),
                    fontSize: 16),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Text(
                'View all',
                style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffF27712),
                    fontSize: 12),
              ),
            ]),
          ),
//Listing List
          SizedBox(
            height: 10,
          ),
          Container(
            height: mediaHeight * 0.12,
            width: mediaWidth,
            //color: Colors.red,
            margin: EdgeInsets.only(left: 10),
            child: Row(children: [
              Flexible(
                child: Container(
                  height: mediaHeight * 0.12,
                  width: mediaHeight * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(20)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/feature1.png'),
                    ),
                  ),
                ),
              ),
              Container(
                width: mediaWidth * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffF0F0F0))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 5),
                      child: Text(
                        'Casual shirt',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            color: Color(0xff181717),
                            fontSize: 16),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                        'Shopee offers comfort and casual shirt for women.',
                        maxLines: 2,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff181717),
                            fontSize: 11),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, top: 5, right: 5),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 15,00 per day',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff181717),
                                  fontSize: 12),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 2),
                              decoration: BoxDecoration(
                                color: Color(0xffF19B6B),
                                borderRadius: BorderRadius.circular(2),
                              ),
                              child: Text(
                                'Borrow',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFFFFFF),
                                    fontSize: 8),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ]),
      )),
    );
  }
}

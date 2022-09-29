import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:top_modal_sheet/top_modal_sheet.dart';

class RentalDetails extends StatefulWidget {
  const RentalDetails({Key? key}) : super(key: key);

  @override
  State<RentalDetails> createState() => _RentalDetailsState();
}

class _RentalDetailsState extends State<RentalDetails> {
  showLogIn(double mediaHeight, double mediaWidth) {
    showModalBottomSheet(
        isDismissible: false,
        context: context,
        builder: (context) {
          return Container(
            height: mediaHeight * 0.55,
            width: mediaWidth,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //Cross Icon
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20, top: 15),
                    child: Icon(
                      Icons.close,
                      color: Color(0xff0F0F0F),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, top: mediaHeight * 0.5 * 0.1),
                child: Text(
                  'Enter your e-mail and password to login.',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff0F0F0F),
                      fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                        'E-mail',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8F9BB3),
                            fontSize: 14),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffEDF1F7)))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility_off),
                      label: Text(
                        'Password',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8F9BB3),
                            fontSize: 14),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffEDF1F7)))),
                ),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                  showCart(mediaHeight, mediaWidth);
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: mediaWidth,
                  height: mediaHeight * 0.05,
                  child: Center(
                      child: Text(
                    'Next',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 16),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Color(0xff5E2F21),
                  ),
                ),
              ),
            ]),
          );
        });
  }

  void showCart(double mediaHeight, double mediaWidth) {
    showTopModalSheet(
      context,
      Container(
        height: mediaHeight * 0.45,
        width: mediaWidth,
        //color: Colors.blue,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //close ^
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'close',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Color(0xff697386),
                            fontSize: 14),
                      ),
                      Transform.rotate(
                          angle: -1.5708,
                          child: Icon(
                            Icons.arrow_right,
                            color: Color(0xff697386),
                          )),
                    ],
                  ),
                ),
              ),
              //Image row
              SizedBox(
                height: mediaHeight * 0.05,
              ),
              Container(
                height: mediaHeight * 0.5 * 0.66,
                width: mediaWidth,
                margin: EdgeInsets.only(left: 10, right: 10),
                //color: Colors.red,
                child: Row(
                  children: [
                    //image
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/images/feature1.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Black dress with a belt',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1A1F36),
                                      fontSize: 14),
                                ),
                                Text(
                                  '\$50,00',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff1A1F36),
                                      fontSize: 14),
                                ),
                              ]),
                          Row(
                            children: [
                              Text(
                                'Qty',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff697386),
                                    fontSize: 14),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '1',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1A1F36),
                                    fontSize: 14),
                              ),
                              Transform.rotate(
                                angle: 1.5708,
                                child: Icon(
                                  Icons.arrow_right,
                                  color: Color(0xff8792A2),
                                ),
                              )
                            ],
                          ),
                          //Subtotal row
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subtotal',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1A1F36),
                                    fontSize: 14),
                              ),
                              Text(
                                '\$50,00',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1A1F36),
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          //Divider
                          Divider(
                            thickness: 2,
                            color: Color.fromRGBO(60, 66, 87, .12),
                          ),
                          //Fee
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Fee',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff697386),
                                    fontSize: 14),
                              ),
                              Text(
                                '\$5,00',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff697386),
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          //Divider
                          Divider(
                            thickness: 2,
                            color: Color.fromRGBO(60, 66, 87, .12),
                          ),
                          //Total
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total due',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1A1F36),
                                    fontSize: 14),
                              ),
                              Text(
                                '\$55,00',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff1A1F36),
                                    fontSize: 14),
                              ),
                            ],
                          ),
                          //Confirm
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff5E2F21),
                                  borderRadius: BorderRadius.circular(5)),
                              margin: EdgeInsets.only(top: 20, left: 20),
                              width: mediaWidth * 0.4,
                              height: mediaWidth * 0.1,
                              child: Center(
                                  child: Text(
                                'Confirm',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffFFFFFF),
                                    fontSize: 14),
                              )),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    var topHeight = MediaQuery.of(context).padding.top;
    mediaHeight -= topHeight;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
//Custom App Bar
          Container(
            height: mediaHeight * 0.05,
            color: Colors.white,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.arrow_back),
                  Text(
                    'Rental Details',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0F0F0F),
                      fontSize: 20,
                    ),
                  ),
                  Icon(Icons.favorite_border),
                ]),
          ),
          Container(
            height: mediaHeight * 0.95,
            width: mediaWidth,
            child: Stack(children: [
//Image
              Container(
                margin: EdgeInsets.only(
                  left: 30,
                ),
                height: mediaWidth,
                width: mediaWidth,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30)),
                    color: Colors.pink,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/detail1.png',
                        ),
                        fit: BoxFit.fill)),
              ),
              Container(
                // margin: EdgeInsets.only(
                //   right: 30,
                // ),
                height: mediaWidth * 0.9,
                width: mediaWidth,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomLeft: Radius.circular(30)),
                    color: Colors.blue,
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/images/detail1.png',
                        ),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: mediaWidth * 0.9,
                width: mediaWidth,
                child: Container(
                  height: mediaHeight - mediaWidth,
                  width: mediaWidth,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                    ),
                  ),
//white bg content
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: SingleChildScrollView(
                      child: Column(children: [
                        //Item Rent
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
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
                        //Black dress with belt
                        Text(
                          'Black dress with a belt',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff5E2F21),
                              fontSize: 20),
                        ),
                        //Clothes > Dresses
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Clothes',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff0F0F0F),
                                  fontSize: 14),
                            ),
                            Icon(Icons.arrow_right),
                            Text(
                              'Clothes',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff0F0F0F),
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        //50,000 per day
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$ 50,00 ',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff0F0F0F),
                                  fontSize: 16),
                            ),
                            Text(
                              'per day ',
                              style: GoogleFonts.poppins(
                                  fontFeatures: [
                                    FontFeature.superscripts(),
                                  ],
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff0F0F0F),
                                  fontSize: 16),
                            ),
                          ],
                        ),
                        //Refundable Deposit
                        Text(
                          'Refundable Deposit \$300',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff0F0F0F),
                              fontSize: 12),
                        ),
                        //Rating
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xffFDC967),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFDC967),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFDC967),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFDC967),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xffFDC967),
                            )
                          ],
                        ),
                        //Rating
                        Text(
                          '4.9 (from 50 ratings)',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              color: Color(0xff525470),
                              fontSize: 12),
                        ),
                        //Category Tabs
                        SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 10, right: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'About',
                                        style: GoogleFonts.poppins(
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff0F0F0F),
                                            fontSize: 18),
                                      ),
                                      Container(
                                        height: 2,
                                        width: 20,
                                        color: Colors.black,
                                      )
                                    ]),
                                Text(
                                  'Pictures',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff6F6F6F),
                                      fontSize: 18),
                                ),
                                Text(
                                  'Availability',
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff6F6F6F),
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Here you can buy...
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Here you can buy and sell clothes or other small things, giving them a chance for a second life.',
                            maxLines: 2,
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6F6F6F),
                                fontSize: 14),
                          ),
                        ),

                        //Location
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(
                                text: 'Location: ',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff6F6F6F),
                                    fontSize: 16),
                              ),
                              TextSpan(
                                text: 'New York, 10006',
                                style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff0F0F0F),
                                    fontSize: 16),
                              ),
                            ])),
                          ),
                        ),
                        //Map
                        Align(
                          alignment: Alignment.topLeft,
                          child: Image.asset('assets/images/map.png'),
                        ),
                        //Buy Button
                        InkWell(
                          onTap: () {
                            showLogIn(mediaHeight, mediaWidth);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            width: mediaWidth,
                            height: mediaHeight * 0.05,
                            child: Center(
                                child: Text(
                              'Buy',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 16),
                            )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color(0xff5E2F21),
                            ),
                          ),
                        ),
                        //Security Transaction
                        Container(
                          height: mediaHeight * 0.06,
                          margin:
                              EdgeInsets.only(left: 10, right: 10, bottom: 10),
                          child: Row(
                            children: [
                              Image.asset('assets/images/lock.png'),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Secure Transaction',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff5E2F21),
                                        fontSize: 14),
                                  ),
                                  Text(
                                    'How we protect your security',
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff5E2F21),
                                        fontSize: 14),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ]),
                    ),
                  ),
                ),
              ),
//profile row on image
              Positioned(
                top: mediaWidth * 0.9 - 10,
                left: 20,
                child: Row(children: [
                  Icon(
                    Icons.share,
                    size: 20,
                  ),
                  SizedBox(
                    width: mediaWidth * 0.1,
                  ),
                  Icon(
                    Icons.favorite_outline,
                    size: 20,
                  ),
                  Text(
                    '48',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0F0F0F),
                    ),
                  ),
                ]),
              ),
              Positioned(
                top: mediaWidth * 0.9 - 20,
                left: mediaWidth * 0.65,
                child: Row(children: [
                  Image.asset(
                    'assets/images/detail_profile.png',
                    height: 40,
                    width: 40,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'marta12',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      color: Color(0xff0F0F0F),
                    ),
                  ),
                ]),
              ),
            ]),
          ),
        ],
      )),
    );
  }
}

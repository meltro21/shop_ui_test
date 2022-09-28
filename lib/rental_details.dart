import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class RentalDetails extends StatefulWidget {
  const RentalDetails({Key? key}) : super(key: key);

  @override
  State<RentalDetails> createState() => _RentalDetailsState();
}

class _RentalDetailsState extends State<RentalDetails> {
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
                  child: Column(children: [
                    //Item Rent
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
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
                  ]),
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

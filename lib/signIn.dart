import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    var topHeight = MediaQuery.of(context).padding.top;
    mediaHeight -= topHeight;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: mediaHeight * 0.45,
          width: mediaWidth,
          color: Colors.blue,
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
                  color: Colors.red,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    var mediaHeight = MediaQuery.of(context).size.height;
    var mediaWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //Custom App Bar
            Container(
              margin: EdgeInsets.only(
                  left: mediaWidth * 0.05, right: mediaWidth * 0.05),
              height: mediaHeight * 0.05,
              color: Colors.white,
              child: Row(children: [
                Icon(Icons.arrow_back),
                Expanded(
                  child: SizedBox(),
                ),
                Text(
                  'Rental Details',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Color(0xff0F0F0F),
                    fontSize: 20,
                  ),
                ),
                Expanded(
                  child: SizedBox(),
                ),
              ]),
            ),
            //image
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(top: mediaHeight * 0.05),
                child: Stack(children: [
                  Container(
                    height: mediaWidth * 0.35,
                    width: mediaWidth * 0.3,
                    //color: Colors.orange,
                  ),
                  Image.asset(
                    'assets/images/feature1.png',
                    width: mediaWidth * 0.3,
                    height: mediaWidth * 0.3,
                    fit: BoxFit.fill,
                  ),
                  Positioned(
                    top: mediaWidth * 0.3 - 10,
                    left: (mediaWidth * 0.3 / 2) - 40,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      height: 20,
                      width: 80,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              '1 item',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff0F0F0F),
                                fontSize: 12,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right,
                              size: 20,
                            )
                          ]),
                    ),
                  )
                ]),
              ),
            ),
            //Pay Shopee
            Align(
              alignment: Alignment.center,
              child: Text(
                'Pay Shopee',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff697386),
                  fontSize: 16,
                ),
              ),
            ),
            //$50,00
            Align(
              alignment: Alignment.center,
              child: Text(
                '\$56,00',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  color: Color(0xff1A1F36),
                  fontSize: 36,
                ),
              ),
            ),
            //Pay
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: mediaWidth,
                height: mediaHeight * 0.05,
                child: Center(
                    child: Image.asset(
                  'assets/images/pay.png',
                  height: 60,
                  width: 60,
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff000000),
                ),
              ),
            ),
            //Divider
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Flexible(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Flexible(
                    child: Text(
                      'Or pay with card',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8792A2),
                        fontSize: 14,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                ],
              ),
            ),
            //Email
            SizedBox(
              height: mediaHeight * 0.05,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text('Email',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff697386),
                    fontSize: 14,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(60, 66, 87, 0.12)))),
              ),
            ),
            //Country or region
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text('Country or region',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff697386),
                    fontSize: 14,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              height: 50,
              width: mediaWidth,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color.fromRGBO(60, 66, 87, 0.12),
                  )),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: mediaWidth / 2.5,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: '1234 1234 1234 1234',
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                    Image.asset(
                      'assets/images/visa.png',
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/images/visa1.png',
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/images/visa2.png',
                      height: 40,
                      width: 40,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Image.asset(
                      'assets/images/visa3.png',
                      height: 40,
                      width: 40,
                    ),
                  ]),
            ),
//MM/YY
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'MM/YY',
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(60, 66, 87, 0.12)))),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'CVC',
                          suffixIcon: Icon(Icons.credit_card),
                          hintStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromRGBO(60, 66, 87, 0.12)))),
                    ),
                  ),
                ),
              ],
            ),
//Name on Card
            SizedBox(
              height: mediaHeight * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text('Name on Card',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff697386),
                    fontSize: 14,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: TextField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(60, 66, 87, 0.12)))),
              ),
            ),
//Country or region
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text('Country or region',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    color: Color(0xff697386),
                    fontSize: 14,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'United States',
                    suffixIcon: Transform.rotate(
                        angle: 1.567, child: Icon(Icons.arrow_right)),
                    hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff1A1F36)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(60, 66, 87, 0.12)))),
              ),
            ),
            Container(
              height: 40,
              margin: EdgeInsets.only(right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'ZIP',
                    suffixIcon: Icon(Icons.credit_card),
                    hintStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromRGBO(60, 66, 87, 0.12)))),
              ),
            ),
            //Pay
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: mediaWidth,
                height: mediaHeight * 0.05,
                child: Center(
                    child: Text(
                  'Pay \$56,00',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                )),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color(0xff5E2F21),
                ),
              ),
            ),
            //Powered by
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Powered by',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8792A2),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Terms',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8792A2),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/stripe.png',
                      height: 20,
                      width: 40,
                    ),
                    Text(
                      'Privacy',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff8792A2),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
      )),
    );
  }
}

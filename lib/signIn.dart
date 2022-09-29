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
          height: mediaHeight * 0.55,
          width: mediaWidth,
          color: Colors.blue,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //Cross Icon
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: EdgeInsets.only(right: 20, top: 15),
                child: Icon(
                  Icons.close,
                  color: Color(0xff0F0F0F),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: mediaHeight * 0.5 * 0.1),
              child: Text(
                'Enter your e-mail and password to login.',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF),
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
              onTap: () {},
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
        ),
      ),
    );
  }
}

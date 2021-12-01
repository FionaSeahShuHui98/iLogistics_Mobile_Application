import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/navigation_bar.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';

class otp_screen extends StatefulWidget {
  const otp_screen({Key? key}) : super(key: key);

  @override
  _otp_screenState createState() => _otp_screenState();
}

class _otp_screenState extends State<otp_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Screen Header
      appBar: AppBar(
        backgroundColor: Color(0xff2A4D69),
        automaticallyImplyLeading: true,
        title: Text("OTP"),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [

            // Title
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "OTP Verification",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color(0xff2A4D69),
                  ),
                ),
              ),
            ),

            // Line Spacing
            SizedBox(height: 30,),

            // Instructions
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  "We have sent a OTP message to your mobile phone",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Color(0xff2A4D69),
                  ),
                ),
              ),
            ),

            // Line Spacing
            SizedBox(height: 30,),

            // OTP Input
            Container(
              padding: EdgeInsets.all(20),
              child: PinEntryTextField(
                showFieldAsBox: true,
                fields: 4,
              ),
            ),

            // Reset Password Button
            Container(
              width: double.infinity,
              height: 50,
              margin: EdgeInsets.only(top: 50, left: 20, right: 20,),
              child: ElevatedButton.icon(
                onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => navigation_bar(),));},
                icon: Icon(Icons.restart_alt),
                label: Text(
                  "Send OTP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xff2A4D69),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}


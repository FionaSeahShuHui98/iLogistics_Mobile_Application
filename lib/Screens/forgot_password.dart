import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/otp.dart';

class forgot_password_screen extends StatefulWidget {
  const forgot_password_screen({Key? key}) : super(key: key);

  @override
  _forgot_password_screenState createState() => _forgot_password_screenState();
}

class _forgot_password_screenState extends State<forgot_password_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Screen Header
      appBar: AppBar(
        backgroundColor: Color(0xff2A4D69),
        automaticallyImplyLeading: true,
        title: Text("Forget Password"),
      ),

      body: Column(
        children: [

          //Title
          Container(
              margin: EdgeInsets.only(top: 60),
              child: Center(
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color(0xff2A4D69),
                  ),
                ),
              )
          ),

          // Phone Number
          Container(
            margin: EdgeInsets.only(top: 60, left: 20, right: 20,),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                icon: Icon(Icons.phone),
                border: OutlineInputBorder(),
                labelText: "Enter your Phone Number",
                hintText: 'Phone Number',
              ),
            ),
          ),

          // OTP Button
          Container(
            width: double.infinity,
            height: 50,
            margin: EdgeInsets.only(top: 50, left: 20, right: 20,),
            child: ElevatedButton.icon(
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => otp_screen(),));},
              icon: Icon(Icons.sms),
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

        ],
      ),
    );
  }
}

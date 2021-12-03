import 'package:flutter/material.dart';

class company_tab extends StatefulWidget {
  const company_tab({Key? key}) : super(key: key);

  @override
  _company_tabState createState() => _company_tabState();
}

class _company_tabState extends State<company_tab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Date Joined Company
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text("DATE JOINED COMPANY",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 30),
                child: Text("24 JANUARY 2021"),
              ),
            ]
        ),

        // Role
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text("ROLE",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 30),
                child: Text("DRIVER"),
              ),
            ]
        ),

        // Employee ID
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text("EMPLOYEE ID",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 30),
                child: Text("D111367"),
              ),
            ]
        ),

        // Email
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text("EMAIL",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 30),
                child: Text("CHAN.HUI.YING@ILOGISTICS.COM"),
              ),
            ]
        ),

      ],
    );
  }
}

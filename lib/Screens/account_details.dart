import 'package:flutter/material.dart';
import 'package:mobile_app/tabs/company.dart';
import 'package:mobile_app/tabs/emergency.dart';
import 'package:mobile_app/tabs/personal.dart';
import 'package:mobile_app/tabs/vehicle.dart';

class account_details_screen extends StatefulWidget {
  const account_details_screen({Key? key}) : super(key: key);

  @override
  _account_details_screenState createState() => _account_details_screenState();
}

class _account_details_screenState extends State<account_details_screen> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 4,
      child: Scaffold(

        // Header
        appBar: AppBar(
          backgroundColor: Color(0xff2A4D69),
          title: Text("View Profile"),
          automaticallyImplyLeading: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(text: "Personal", icon: Icon(Icons.person)),
              Tab(text: "Company", icon: Icon(Icons.work)),
              Tab(text: "Vehicle", icon: Icon(Icons.directions_car)),
              Tab(text: "Emergency", icon: Icon(Icons.people)),
            ],
          ),
        ),

        // Content
        body: TabBarView(
          children: [
            personal_tab(),
            company_tab(),
            vehicle_tab(),
            emergency_tab(),
          ],
        ),

      ),
  );
}

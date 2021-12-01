import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/account.dart';
import 'package:mobile_app/Screens/call.dart';
import 'package:mobile_app/Screens/home.dart';
import 'package:mobile_app/Screens/pending_jobs.dart';

import 'completed_jobs.dart';

class navigation_bar extends StatefulWidget {
  @override
  _navigation_barState createState() => _navigation_barState();
}

class _navigation_barState extends State<navigation_bar> {

  //Declaration
  int currentTab = 0;
  final PageStorageBucket page = PageStorageBucket();

  // Types of screen
  final List<Widget> screens = [
    home_screen(),
    pending_jobs_screen(),
    completed_jobs_screen(),
    account_screen(),
  ];

  // Setting of home page
  Widget currentScreen = home_screen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: page,
      ),

      // Call Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff2A4D69),
        child: Icon(
          Icons.phone,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => call_screen(),
          ));
        },
      ),
      // Postition of Call Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[

              // Home & Pending Jobs Button
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Home Button
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = home_screen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Color(0xff2A4D69) : Colors.grey,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                            color: currentTab == 0 ? Color(0xff2A4D69) : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Pending Jobs Button
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = pending_jobs_screen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.pending_actions,
                          color: currentTab == 1 ? Color(0xff2A4D69) : Colors.grey,
                        ),
                        Text(
                          'Pending',
                          style: TextStyle(
                            color: currentTab == 1 ? Color(0xff2A4D69) : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),

              // Completed Jobs & Account Button
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Completed Jobs Button
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = completed_jobs_screen();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.done_outline,
                          color: currentTab == 2 ? Color(0xff2A4D69) : Colors.grey,
                        ),
                        Text(
                          'Completed',
                          style: TextStyle(
                            color: currentTab == 2 ? Color(0xff2A4D69) : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Account Button
                  MaterialButton(
                    minWidth: 40,
                    onPressed: (){
                      setState(() {
                        currentScreen = account_screen();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 3 ? Color(0xff2A4D69) : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 3 ? Color(0xff2A4D69) : Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),

    );
  }
}

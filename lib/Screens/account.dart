import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/account_details.dart';
import 'package:mobile_app/Screens/change_password.dart';
import 'package:mobile_app/Screens/login.dart';
import 'package:mobile_app/Screens/notification.dart';
import 'package:mobile_app/Screens/settings.dart';

class account_screen extends StatefulWidget {
  const account_screen({Key? key}) : super(key: key);

  @override
  _account_screenState createState() => _account_screenState();
}

class _account_screenState extends State<account_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Header
      appBar: AppBar(
        backgroundColor: Color(0xff2A4D69),
        automaticallyImplyLeading: false,
        title: Text('Accounts'),
        actions: <Widget>[
          //Notifications Page
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => notification_screen(),
              ));
            },
          ),
        ],
      ),

      // Main Content
       body: Container(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: ListView(
            children: [

              // Line Spacing
              SizedBox(height: 10,),

              // Profile Picture
              Center(
                child: Stack(
                  children: [
                    // Profile Picture
                    Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2, blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(0,10),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              // Change Image
                              image: AssetImage("assets/images/Logo.png")
                          )
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Color(0xff2A4D69),
                            ),
                            color: Color(0xff2A4D69),
                          ),
                          child: IconButton(
                            icon: Icon(Icons.edit),
                            color: Colors.white,
                            onPressed: (){
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        ListTile(
                                          title: new Text('Choose Profile Photo'),
                                        ),
                                        SizedBox(height: 10,),
                                        ListTile(
                                          leading: new Icon(Icons.camera_alt),
                                          title: new Text('Camera'),
                                          onTap: () {},
                                        ),
                                        SizedBox(height: 10,),
                                        ListTile(
                                          leading: new Icon(Icons.photo),
                                          title: new Text('Gallery'),
                                          onTap: () => {} ,
                                        ),
                                        SizedBox(height: 10,),
                                      ],
                                    );
                                  }
                              );
                            },
                          ),
                        )
                    ),
                    SizedBox(height: 15,),
                  ],
                ),
              ),

              // Line Spacing
              SizedBox(height: 20,),

              // User Name
              Container(
                alignment: Alignment.center,
                child: Text(
                    "Jennifer",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,)
                ),
              ),

              // Line Spacing
              SizedBox(height: 5,),

              // User Position
              Container(
                alignment: Alignment.center,
                child: Text(
                    "Driver",
                    style: TextStyle(
                      fontSize: 20,)
                ),
              ),

              // Line Spacing
              SizedBox(height: 30,),

              // Main Content
              Column(
                children: [

                  // View Profile
                  ListTile(
                    leading: new Icon(Icons.account_circle, size: 35,),
                    title: new Text('View Profile', style: TextStyle(fontSize: 18,),),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => account_details_screen(),));},
                  ),

                  // Change Password
                  ListTile(
                    leading: new Icon(Icons.lock,  size: 35,),
                    title: new Text('Change Password', style: TextStyle(fontSize: 18),),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => change_password_screen(),));},
                  ),

                  // Settings
                  ListTile(
                    leading: new Icon(Icons.settings,  size: 35,),
                    title: new Text('Settings', style: TextStyle(fontSize: 18),),
                    onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => settings_screen(),));},
                  )
                ],
              ),

              // Line Spacing
              SizedBox(height: 15,),

              // Log Out Button
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton.icon(
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => login_screen(),));},
                  icon: Icon(Icons.logout),
                  label: Text(
                    "Logout",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffDC3545),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                  ),
                ),
              ),

            ],
          ),
        )
    );
  }
}

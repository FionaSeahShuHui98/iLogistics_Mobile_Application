import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class call_screen extends StatefulWidget {
  @override
  _call_screenState createState() => _call_screenState();
}

class _call_screenState extends State<call_screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      // Header
      appBar: AppBar(
        backgroundColor: Color(0xff2A4D69),
        title: Text("Calls"),
      ),

      // Main Content
      body: Column(
        children: <Widget>[

          // Line Spacing
          SizedBox(height: 20,),

          // Contact List 1 - Coordinator
          ListTile(
            leading: new CircleAvatar(backgroundImage: AssetImage('assets/images/Logo.png'),radius: 30,),
            title: new Text("Coordinator",style: TextStyle(fontSize: 16),),
            trailing: new ElevatedButton.icon(
              icon: Icon(Icons.call),
                onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber('91320514');
                },
                label: Text("Call"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff2A4D69),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                )
            ),
          ),

          // Line Spacing
          SizedBox(height: 30,),

          // Contact List 2 - Admin
          ListTile(
            leading: new CircleAvatar(backgroundImage: AssetImage('assets/images/Logo.png'),radius: 30,),
            title: new Text("Admin",style: TextStyle(fontSize: 16),),
            trailing: new ElevatedButton.icon(
              icon: Icon(Icons.call),
              onPressed: () async {
                await FlutterPhoneDirectCaller.callNumber('91320514');
              },
              label: Text("Call"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff2A4D69),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                )
            ),
          ),

          // Line Spacing
          SizedBox(height: 30,),

          // Contact List 3 - HR Admin
          ListTile(
            leading: new CircleAvatar(backgroundImage: AssetImage('assets/images/Logo.png'),radius: 30,),
            title: new Text("HR Admin",style: TextStyle(fontSize: 16),),
            trailing: new ElevatedButton.icon(
              icon: Icon(Icons.call),
                onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber('91320514');
                },
              label: Text("Call"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff2A4D69),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                )
            ),
          ),

          // Line Spacing
          SizedBox(height: 30,),

          // Contact List 4 - Supervisor
          ListTile(
            leading: new CircleAvatar(backgroundImage: AssetImage('assets/images/Logo.png'),radius: 30,),
            title: new Text("Supervisor",style: TextStyle(fontSize: 16),),
            trailing: new ElevatedButton.icon(
              icon: Icon(Icons.call),
                onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber('91320514');
                },
              label: Text("Call"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff2A4D69),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                )
            ),
          ),
        ],
      ),
    );
  }
}

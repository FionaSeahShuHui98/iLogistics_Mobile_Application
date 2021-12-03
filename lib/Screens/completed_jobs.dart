import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/notification.dart';

class completed_jobs_screen extends StatefulWidget {
  const completed_jobs_screen({Key? key}) : super(key: key);

  @override
  _completed_jobs_screenState createState() => _completed_jobs_screenState();
}

class _completed_jobs_screenState extends State<completed_jobs_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Header
        appBar: AppBar(
          backgroundColor: Color(0xff2A4D69),
          automaticallyImplyLeading: false,
          title: Text('Completed Jobs'),
          actions: <Widget>[
            //Notifications Page
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => notification_screen(),));},
            ),
          ],
        ),

        // Main Content
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top:20, left: 10, right: 10, bottom: 20),
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.search),
                      border: OutlineInputBorder(),
                      labelText: "Search",
                      hintText: 'Customer Name / Job Number',
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
                title: Text("I.LOG20210503"),
                subtitle: Text("DHL Express\n03 May 2021, Friday"),
                onTap:(){}
            ),
            SizedBox(height:10),
            ListTile(
              title: Text("I.LOG20210503"),
              subtitle: Text("DHL Express\n03 May 2021, Friday"),
            ),
          ],
        ),

    );
  }
}

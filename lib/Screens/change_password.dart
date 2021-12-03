import 'package:flutter/material.dart';

class change_password_screen extends StatefulWidget {
  @override
  _change_password_screenState createState() => _change_password_screenState();
}

class _change_password_screenState extends State<change_password_screen> {

  // Declaration
  var password_lock = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Header
      appBar: AppBar(
        backgroundColor: Color(0xff2A4D69),
        automaticallyImplyLeading: true,
        title: Text("Change Password"),
      ),

      // Main Content
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              children: [

                // Title
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 30, right: 20, left: 20,),
                  child: Text(
                    "Change Password", style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff2A4D69),
                  ),
                  ),
                ),

                // Old Password
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20, right: 20),
                  child: Center(
                    child: TextField(
                      obscureText: password_lock ? false : true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              password_lock = !password_lock;
                            });
                          },
                          icon: Icon(
                            password_lock
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: "Old Password",
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),

                // New Password
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20, right: 20),
                  child: Center(
                    child: TextField(
                      obscureText: password_lock ? false : true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              password_lock = !password_lock;
                            });
                          },
                          icon: Icon(
                            password_lock
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: "New Password",
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),

                // Confirm Password
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20, right: 20),
                  child: Center(
                    child: TextField(
                      obscureText: password_lock ? false : true,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              password_lock = !password_lock;
                            });
                          },
                          icon: Icon(
                            password_lock
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: "Confirm Password",
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),

                // Password Reset Button
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.only(top: 40, left: 20, right: 20,),
                  child: ElevatedButton.icon(
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Password Changed'),
                        content: const Text('Password Sucessfully Changed'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'OK',),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                    icon: Icon(Icons.lock_clock),
                    label: Text(
                      "Change Password",
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
      ),
    );
  }
}

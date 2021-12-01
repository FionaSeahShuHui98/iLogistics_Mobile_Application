import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/forgot_password.dart';
import 'package:mobile_app/Screens/navigation_bar.dart';

class login_screen extends StatefulWidget {
  @override
  _login_screenState createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {

  // Declaration
  var password_lock = false;

  @override
  Widget build(BuildContext context) {

    // Declaration
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Company Logo
              Container(
                margin: EdgeInsets.only(top: 40),
                height: height * .3,
                child: FittedBox(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Logo.png'),
                    radius: 120,
                  ),
                ),
              ),

              // Title + Login Credentials
              Container(
                height: height * 0.65,
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        // Title
                        Text(
                          "TMS System Login",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2A4D69)
                          ),
                        ),

                        // Line Spacing
                        SizedBox(height: constraints.maxHeight * 0.01,),
                        SizedBox(height: constraints.maxHeight * 0.15,),

                        // Login Credentials - Handphone Number
                        Container(
                            height: constraints.maxHeight * 0.12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Center(
                                  child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: "Enter your Phone Number",
                                        hintText: "Phone Number",
                                        icon: Icon(Icons.phone),
                                      )
                                  )
                              ),
                            )
                        ),

                        // Line Spacing
                        SizedBox(height: constraints.maxHeight * 0.02,),

                        // Login Credentials - Password
                        Container(
                            height: constraints.maxHeight * 0.12,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16)
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Center(
                                  child: TextFormField(
                                      obscureText: password_lock ? false : true,
                                      decoration: InputDecoration(
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                            setState(() { password_lock = !password_lock; });
                                          },
                                          icon: Icon( password_lock ? Icons.visibility : Icons.visibility_off, color: Colors.grey,),
                                        ),
                                        labelText: "Enter your Password",
                                        hintText: "Password",
                                        icon: Icon(Icons.lock),
                                      )
                                  )
                              ),
                            )
                        ),

                        // Forgot Password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => forgot_password_screen(),));},
                              child: Text(
                                'Forgot Password?', style: TextStyle(
                                color: Color(0xff2A4D69),
                                fontWeight: FontWeight.bold,
                              ),
                              ),
                            ),
                          ],
                        ),

                        // Login Button
                        Container(
                          width: double.infinity,
                          height: constraints.maxHeight * 0.12,
                          margin: EdgeInsets.only(top: constraints.maxHeight*0.05),
                          child: ElevatedButton.icon(
                              icon: Icon(Icons.login),
                              label: Text("Login", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,)),
                              onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => navigation_bar(),));},
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xff2A4D69),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                              )
                          ),
                        ),

                      ],
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

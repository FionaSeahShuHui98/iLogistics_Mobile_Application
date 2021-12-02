import 'package:flutter/material.dart';

class personal_tab extends StatefulWidget {
  const personal_tab({Key? key}) : super(key: key);

  @override
  _personal_tabState createState() => _personal_tabState();
}

class _personal_tabState extends State<personal_tab> {

  // Functions - Handphone Number
  handphone_number(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Update Mobile Number"),
        content: TextField(
          decoration: InputDecoration(
              hintText: "New Handphone Number"
          ),
          controller: customController,
          keyboardType: TextInputType.phone,
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {Navigator.of(context).pop(context);},
            icon: Icon(Icons.cancel),
            label: Text(
              "Cancel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xffDC3545),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {Navigator.of(context).pop(context);},
            icon: Icon(Icons.change_circle_sharp),
            label: Text(
              "Confirm",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff2A4D69),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
        ],
      );
    });
  }

  // Functions - Email
  email(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Update Email"),
        content: TextField(
          decoration: InputDecoration(
              hintText: "Email"
          ),
          controller: customController,
          //keyboardType: TextInputType.phone,
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {Navigator.of(context).pop(context);},
            icon: Icon(Icons.cancel),
            label: Text(
              "Cancel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xffDC3545),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {Navigator.of(context).pop(context);},
            icon: Icon(Icons.change_circle_sharp),
            label: Text(
              "Confirm",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff2A4D69),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
        ],
      );
    });
  }

  // Functions - Address
  address(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Update Address"),
        content: TextField(
          decoration: InputDecoration(
              hintText: "Addresd"
          ),
          controller: customController,
          //keyboardType: TextInputType.phone,
        ),
        actions: [
          ElevatedButton.icon(
            onPressed: () {Navigator.of(context).pop(context);},
            icon: Icon(Icons.cancel),
            label: Text(
              "Cancel",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xffDC3545),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {Navigator.of(context).pop(context);},
            icon: Icon(Icons.change_circle_sharp),
            label: Text(
              "Confirm",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
                primary: Color(0xff2A4D69),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )
            ),
          ),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        // Name
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text("NAME",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 30),
                child: Text("CHAN HUI YING"),
              ),
            ]
        ),

        // Date of Birth
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 50, left: 20),
                child: Text("DATE OF BIRTH",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Text("26 July 1986"),
              ),
            ]
        ),

        // Mobile Number
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Text("MOBILE NO",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 25),
                child: Text("98765432"),
              ),
              Container(
                padding: EdgeInsets.only(top: 40, left: 160),
                child: IconButton(
                  onPressed: () {
                    handphone_number(context);
                  },
                  icon: Icon(Icons.edit),
                ),
              )
            ]
        ),

        // Email
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Text("EMAIL",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text("CHAN.HUI.YING@ILOGISTICS.COM"),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: IconButton(
                  onPressed: () {email(context);},
                  icon: Icon(Icons.edit),
                ),
              )
            ]
        ),

        // Address
        Row(
            children:[
              Container(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Text("ADDRESS",style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 30),
                child: Text("LOR AH SOO \nBLK 137 APT #05-531, \nSINGAPORE 530117"),
              ),
              Container(
                padding: EdgeInsets.only(top: 30, left: 85),
                child: IconButton(
                  onPressed: () {address(context);},
                  icon: Icon(Icons.edit),
                ),
              )
            ]
        ),

      ],
    );
  }
}

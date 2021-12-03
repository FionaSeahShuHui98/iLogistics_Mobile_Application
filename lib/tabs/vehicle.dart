import 'package:flutter/material.dart';

class vehicle_tab extends StatefulWidget {
  @override
  _vehicle_tabState createState() => _vehicle_tabState();
}

class _vehicle_tabState extends State<vehicle_tab> {

  // Functions - Vehicle Type
  vehicle_type(BuildContext context) {

    String dropdownValue = 'Van';

    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Update Vehicle Type"),
        content: DropdownButton<String>(
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.black),
          underline: Container(
            height: 2,
            color: Color(0xff2A4D69),
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },

          // Drop Down Menu Items
          items: <String>['Car','3 Ton', '3 Ton TG', '6 Ton', '6 Ton TG', '6 Ton OH','Van',]
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
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

  // Functions - Vehicle Plate Number
  vehicle_plate(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(context: context, builder: (context) {
      return AlertDialog(
        title: Text("Update Vehicle Plate Number"),
        content: TextField(
          decoration: InputDecoration(
              hintText: "New Vehicle Plate Number"
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
    return Scaffold(
      body: Column(
        children: [

          // Vehicle Type
          Row(
              children:[
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20,),
                  child: Text("VEHICLE TYPE",style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                //SizedBox(height: 50,),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 30),
                  child: Text("VAN"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 170),
                  child: IconButton(
                    onPressed: () {vehicle_type(context);},
                    icon: Icon(Icons.edit),
                  ),
                ),
              ]
          ),

          // Vehicle Number
          Row(
              children:[
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Text("VEHICLE NO",style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Text("SBA 1234A"),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30, left: 150),
                  child: IconButton(
                    onPressed: () {vehicle_plate(context);},
                    icon: Icon(Icons.edit),
                  ),
                )
              ]
          ),
        ],
      ),
    );
  }
}

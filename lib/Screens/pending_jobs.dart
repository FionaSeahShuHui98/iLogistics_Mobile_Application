import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/notification.dart';

class pending_jobs_screen extends StatefulWidget {
  const pending_jobs_screen({Key? key}) : super(key: key);

  @override
  _pending_jobs_screenState createState() => _pending_jobs_screenState();
}

class _pending_jobs_screenState extends State<pending_jobs_screen> {

  // Declaration
  final allNotifications = CheckBoxState(title: 'Select All');

  // Checkbox Content
  final notifications = [
    CheckBoxState(title: '234\ni.Logistic\nPick Up Location: XXXXXXXXXXX\nDropoff Location: XXXXXXXXX',),
    CheckBoxState(title: '02'),
    CheckBoxState(title: '03'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2A4D69),
        automaticallyImplyLeading: false,
        title: Text('Pending Jobs'),
        actions: <Widget>[
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
      body: ListView(
        padding: EdgeInsets.all(12),
        children: [
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.search),
              border: OutlineInputBorder(),
              labelText: "Search",
              hintText: 'Customer Name / Job Number',
            ),
          ),
          buildgroupCheckbox(allNotifications),
          Divider(color: Color(0xff2A4D69),),
          ...notifications.map(buildSingleCheckbox).toList(),
        ],
      ),
    );
  }

  Widget buildgroupCheckbox(CheckBoxState checkbox) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading,
    activeColor: Color(0xff2A4D69),
    value: checkbox.value,
    title: Text(checkbox.title),
    onChanged: toggleGroupCheckBox,
  );

  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
    controlAffinity: ListTileControlAffinity.leading,
    activeColor: Color(0xff2A4D69),
    value: checkbox.value,
    title: Text(checkbox.title),
    onChanged: (value) => setState(() {
      checkbox.value = value!;
      allNotifications.value =
          notifications.every((notifications) => notifications.value);
    }),
  );

  void toggleGroupCheckBox(bool? value) {
    if (value == null) return;
    setState(() {
      allNotifications.value = value;
      notifications.forEach((notification) => notification.value = value);
    });
  }
}

class CheckBoxState {
  final String title;
  bool value;

  CheckBoxState({
    required this.title,
    this.value = false,
  });

}

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class notification_screen extends StatefulWidget {
  const notification_screen({Key? key}) : super(key: key);

  @override
  _notification_screenState createState() => _notification_screenState();
}

class _notification_screenState extends State<notification_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xff2A4D69),
        title: Text("Notification"),
      ),
      body: ListView(
        children: [
          Slidable(
            // The end action pane is the one at the right or the bottom side.
            endActionPane: const ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xffFF8000),
                  foregroundColor: Colors.white,
                  icon: Icons.star,
                  label: 'Star',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xffDC3545),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: ListTile(
              title: Text('Supervisor'),
              subtitle: Text("Late Delivery"),
              onTap: (){
                //Navigator.of(context).push(MaterialPageRoute(
                  //builder: (context) => message_screen(),
                //));
              },
            ),
          ),
          Slidable(
            // The end action pane is the one at the right or the bottom side.
            endActionPane: const ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xffFF8000),
                  foregroundColor: Colors.white,
                  icon: Icons.star,
                  label: 'Star',
                ),
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xffDC3545),
                  foregroundColor: Colors.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: ListTile(
              title: Text('Supervisor'),
              subtitle: Text("Meeting on 12 November 2021"),
              onTap: (){
                //Navigator.of(context).push(MaterialPageRoute(
                  //builder: (context) => message_screen(),
                //));
              },
            ),
          ),
        ],
      ),
    );
  }
}

void doNothing(BuildContext context) {}

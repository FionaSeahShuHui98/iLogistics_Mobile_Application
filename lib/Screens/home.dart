import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mobile_app/Screens/notification.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:flutter/foundation.dart';

void enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

class home_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        backgroundColor: Color(0xff2A4D69),
      ),
      home: HomePage(),
    );
  }
}

// Declaration
enum LegendShape {Circle, Rectangle}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Legends - Name : Amount
  Map<String, double> dataMap = {
    "Not Completed Jobs": 10,
    "Completed Task": 1,
    "Late": 2,
  };

  // Legends - Colors
  List<Color> colorList = [
    Color(0xffff71ec), //Not Completed Jobs
    Color(0xff01cdfe), //Completed Jobs
    Color(0xfffffb96), //Late
  ];

  // Declaration
  bool _showLegends = true;
  LegendShape? _legendShape = LegendShape.Circle;
  int key = 0;

  @override
  Widget build(BuildContext context) {

    // Pie Chart Settings
    final chart = PieChart(
      key: ValueKey(key),
      dataMap: dataMap,
      //Animation
      animationDuration: Duration(milliseconds: 1000),
      // Divider Size
      chartLegendSpacing: 64,
      chartRadius: MediaQuery
          .of(context)
          .size
          .width / 3.2 > 300
          ? 300
          : MediaQuery
          .of(context)
          .size
          .width / 1.5,
      colorList: colorList,
      initialAngleInDegree: 0,
      // Type
      chartType: ChartType.ring,
      // Center Notes
      centerText: true ? "5 uncompleted jobs": null,
      // Legend Settings
      legendOptions: LegendOptions(
        showLegendsInRow: false,
        legendPosition: LegendPosition.bottom,
        showLegends: _showLegends,
        legendShape: _legendShape == LegendShape.Circle
            ? BoxShape.circle
            : BoxShape.rectangle,
        // Legend Font Size
        legendTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: false,
        showChartValues: false,
        showChartValuesInPercentage: false,
        showChartValuesOutside: false,
      ),
      ringStrokeWidth: 48,
      emptyColor: Colors.grey,
    );

    return Scaffold(

      // Header
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Color(0xff2A4D69),
        actions: <Widget>[
          // Notifcation Bell
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

      // Content
      body: LayoutBuilder(
        builder: (_, constraints) {
          if (constraints.maxWidth >= 600) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: chart,
                ),
                Flexible(
                    flex: 1,
                    child: Text("Test")
                )
              ],
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: chart,
                    margin: EdgeInsets.only(
                      top: 70,
                      left: 30,
                      right: 30,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      ),

    );
  }
}
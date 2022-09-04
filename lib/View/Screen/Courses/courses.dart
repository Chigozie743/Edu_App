import 'package:flutter/material.dart';
import 'package:uidesign/Model/components/module_list_class.dart';

class PrimaryPage extends StatefulWidget {
  @override
  _PrimaryPageState createState() => _PrimaryPageState();
}

List<Module> courses = [
  Module(
      heading: "Igbo",
      sub_heading: "Take a random test across topics",
      percentage: "0.0%"),
  Module(
      heading: "Computing",
      sub_heading: "Take a random test across topics",
      percentage: "30.0%"),
  Module(
      heading: "Creative art",
      sub_heading: "Take a random test across topics",
      percentage: "10.0%"),
  Module(
      heading: "English",
      sub_heading: "Take a random test across topics",
      percentage: "0.0%"),
  Module(
      heading: "French",
      sub_heading: "Take a random test across topics",
      percentage: "0.0%"),
  Module(
      heading: "Mathematics",
      sub_heading: "Take a random test across topics",
      percentage: "20.0%"),
  Module(
      heading: "Natural Science",
      sub_heading: "Take a random test across topics",
      percentage: "0.0%"),
  Module(
      heading: "Geography",
      sub_heading: "Take a random test across topics",
      percentage: "10.0%"),
  Module(
      heading: "Engineering",
      sub_heading: "Take a random test across topics",
      percentage: "50.0%"),
  Module(
      heading: "Phonetics",
      sub_heading: "Take a random test across topics",
      percentage: "0.0%"),
];

Widget courseBox(course) {
  return Container(
    //width: 50,
    height: 65,
    margin: EdgeInsets.only(bottom: 13.0),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: BorderRadius.circular(6),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              course.heading,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              course.sub_heading,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        Text(
          course.percentage,
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

class _PrimaryPageState extends State<PrimaryPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 20.0),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey[600],
                    size: 40,
                  ),
                  Text(
                    "Level 1",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[600],
                    size: 40,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                children: courses.map((course) => courseBox(course)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

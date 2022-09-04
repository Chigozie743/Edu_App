import 'package:flutter/material.dart';
import 'package:uidesign/View/Screen/Test/test.dart';
import 'package:uidesign/Model/components/module_list_class.dart';

class TestClass extends StatefulWidget {
  const TestClass({Key? key}) : super(key: key);
  _TestClassState createState() => _TestClassState();
}

//

class _TestClassState extends State<TestClass> {
  List<Module> tests = [
    Module(
        heading: "Learn",
        sub_heading: "Different models to help you master a course",
        image: "assets/icons/learn.png"),
    Module(
        heading: "Notes",
        sub_heading: "Self-explanatory notes on various topics",
        image: "assets/icons/planning.png"),
    Module(
        heading: "Tests",
        sub_heading: "Different test models to get you exam-ready",
        image: "assets/icons/tests.png"),
    Module(
        heading: "Live",
        sub_heading: "Live Sessions",
        image: "assets/icons/live.png"),
    Module(
        heading: "Games",
        sub_heading: "Educational games based on the course",
        image: "assets/icons/games.png"),
    Module(
        heading: "Progress",
        sub_heading: "Track your progress",
        image: "assets/icons/progress.png"),
  ];

  Widget testCards(test) {
    return Container(
      margin: EdgeInsets.only(bottom: 13),
      height: 70,
      padding: EdgeInsets.all(13.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                test.heading,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 1,
              ),
              Text(
                test.sub_heading,
                style: TextStyle(
                  fontSize: 10,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
          Container(
            child: Image.asset(
              test.image,
              height: 35,
              width: 35,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back_ios_new,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Text(
                    "JHS ICT",
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 31.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(20.0),
              children: tests.map((test) => testCards(test)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

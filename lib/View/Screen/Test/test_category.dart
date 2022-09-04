import 'package:flutter/material.dart';

class TestCategory extends StatefulWidget {
  const TestCategory({Key? key}) : super(key: key);
  _TestCategoryState createState() => _TestCategoryState();
}

Widget firstBox() {
  return Container(
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
              "Learn",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "Different modes to help you master a course",
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
            "assets/icons/learn.png",
            height: 40,
            width: 40,
          ),
        ),
      ],
    ),
  );
}

Widget secondBox() {
  return Container(
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
              "Notes",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "Self-explanatory notes on various topics",
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
            "assets/icons/planning.png",
            height: 35,
            width: 35,
          ),
        ),
      ],
    ),
  );
}

Widget thirdBox() {
  return Container(
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
              "Tests",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "Different test models to get you exam-ready",
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
            "assets/icons/tests.png",
            height: 35,
            width: 35,
          ),
        ),
      ],
    ),
  );
}

Widget fourthBox() {
  return Container(
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
              "Live",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "Live sessions",
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
            "assets/icons/live.png",
            height: 40,
            width: 40,
          ),
        ),
      ],
    ),
  );
}

Widget fifthBox() {
  return Container(
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
              "Games",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "Educational games based on the course",
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
            "assets/icons/games.png",
            height: 35,
            width: 35,
          ),
        ),
      ],
    ),
  );
}

Widget sixthBox() {
  return Container(
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
              "Progress",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              "Track your progress",
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
            "assets/icons/progress.png",
            height: 35,
            width: 35,
          ),
        ),
      ],
    ),
  );
}

class _TestCategoryState extends State<TestCategory> {
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
              children: [
                firstBox(),
                SizedBox(height: 15),
                secondBox(),
                SizedBox(height: 15),
                thirdBox(),
                SizedBox(height: 15),
                fourthBox(),
                SizedBox(height: 15),
                fifthBox(),
                SizedBox(height: 15),
                sixthBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:uidesign/Model/components/profile_courses_model.dart';
import 'package:uidesign/View/Screen/Profile/profile_page.dart';

import 'list_courses1.dart';

class ListCourses extends StatefulWidget {
  const ListCourses({Key? key}) : super(key: key);
  @override
  _ListCoursesState createState() => _ListCoursesState();
}

class _ListCoursesState extends State<ListCourses> {
  List<ProCoursesModel> procourses = [
    ProCoursesModel(
        name: "Primary 1",
        courses: "9 courses",
        icons: Icons.arrow_forward_ios),
    ProCoursesModel(
        name: "Primary 3",
        courses: "10 courses",
        icons: Icons.arrow_forward_ios),
    ProCoursesModel(
        name: "Primary 2",
        courses: "9 courses",
        icons: Icons.arrow_forward_ios),
  ];

  Widget profileCoursesTable(procourse) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.grey[100],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return InsideProfileCourses();
              },
            ),
          );
        },
        child: Row(
          children: [
            Text(
              procourse.name,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Text(
              procourse.courses,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[700],
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4.0, 4.0, 0.0, 0.0),
              child: Icon(
                procourse.icons,
                size: 17,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 30.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfilePage();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.west_sharp,
                      color: Colors.grey[800],
                      size: 30.0,
                    ),
                  ),
                  //const SizedBox(width: 120),
                  const Spacer(),
                  Text(
                    "Courses",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer()
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 8.0, 30.0, 10.0),
              child: Row(
                children: [
                  Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Courses",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w600,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: procourses
                      .map((procourse) => profileCoursesTable(procourse))
                      .toList()),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 10.0),
                padding: const EdgeInsets.all(20),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    "Enter Course Key and Proceed to Checkout",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.blue[800],
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

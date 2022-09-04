import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uidesign/Model/components/profile_courses_model.dart';

import 'list_courses.dart';

class InsideProfileCourses extends StatefulWidget {
  const InsideProfileCourses({Key? key}) : super(key: key);
  _InsideProfileCoursesState createState() => _InsideProfileCoursesState();
}

class _InsideProfileCoursesState extends State<InsideProfileCourses> {
  List<ProCoursesModel> procourses1 = [
    ProCoursesModel(
        numbers: "01",
        header: "PRIMARY 1 IGBO",
        sub_header: "Topic: 6 | Quizes: 6 | Questions: 0"),
    ProCoursesModel(
        numbers: "02",
        header: "PRIMARY 1 IGBO",
        sub_header: "Topic: 10 | Quizes: 3 | Questions: 0"),
    ProCoursesModel(
        numbers: "03",
        header: "PRIMARY 1 IGBO",
        sub_header: "Topic: 8 | Quizes: 1 | Questions: 0"),
    ProCoursesModel(
        numbers: "04",
        header: "PRIMARY 1 ENGLISH",
        sub_header: "Topic: 20 | Quizes: 12 | Questions: 0"),
    ProCoursesModel(
        numbers: "05",
        header: "PRIMARY 1 FRENCH",
        sub_header: "Topic: 4 | Quizes: 6 | Questions: 0"),
    ProCoursesModel(
        numbers: "06",
        header: "PRIMARY 1 LGA",
        sub_header: "Topic: 6 | Quizes: 6 | Questions: 0"),
  ];

  Widget primary1Courses(procourse1) {
    return Container(
      height: 70.0,
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            procourse1.numbers,
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          // const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                procourse1.header,
                style: TextStyle(
                  color: Colors.grey[900],
                  fontSize: 16.2,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              // const Spacer(),
              Text(
                procourse1.sub_header,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // const Spacer(),
            ],
          ),
          // const Spacer()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              decoration: const BoxDecoration(
                  //color: Colors.grey[100],
                  ),
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const ListCourses();
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
                      const Spacer(),
                      Text(
                        "Primary 1",
                        style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.file_download,
                        size: 30.0,
                        color: Colors.greenAccent[700],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "GHC 300.0",
                    style: TextStyle(
                      color: Colors.lightBlueAccent[700],
                      fontSize: 29.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 07.0),
                  Text(
                    "332 days left",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14.2,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // width: 600,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius:
                    const BorderRadius.vertical(top: const Radius.circular(17)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 05.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          "Courses for Primary 1",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 15.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey[400],
                    height: 30.0,
                    thickness: 2.5,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
                  children: procourses1
                      .map((procourse1) => primary1Courses(procourse1))
                      .toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

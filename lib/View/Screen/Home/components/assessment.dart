import 'package:flutter/material.dart';
import 'package:uidesign/Model/components/assessment_model.dart';
import 'package:uidesign/View/Screen/Home/components/preferred_assessment_page.dart';
import 'package:uidesign/View/Screen/Home/home_page.dart';
import 'package:uidesign/View/Screen/welcome/main_page.dart';

class AssessmentPage extends StatefulWidget {
  const AssessmentPage({Key? key}) : super(key: key);
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  List<AssessmentModel> assessmentCourses = [
    AssessmentModel(assessment: "PRIMARY 1 MATHEMATICS"),
    AssessmentModel(assessment: "PRIMARY 1 ENGLISH"),
    AssessmentModel(assessment: "PRIMARY 1 OWOP"),
    AssessmentModel(assessment: "PRIMARY 1 RME"),
    AssessmentModel(assessment: "PRIMARY 1 SCIENCES"),
    AssessmentModel(assessment: "PRIMARY 1 FRENCH"),
    AssessmentModel(assessment: "PRIMARY 1 ARTS"),
  ];

  Widget assessmentBoxes(assessmentCourse) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return PreferredAssessmentPage();
            },
          ),
        );
      },
      child: Container(
        height: 60.0,
        width: 380.0,
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        margin: const EdgeInsets.only(bottom: 15.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            assessmentCourse.assessment,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  Widget asssessmentBottomNav() {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 20.0),
      child: Container(
          //specify height, so that it does not fill the entire screen
          height: 400,
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lower Primary",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 34.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Select Your Course",
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 23.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: assessmentCourses
                          .map((assessmentCourse) =>
                              assessmentBoxes(assessmentCourse))
                          .toList(),
                    ),
                  ),
                ),
              ]) //what you want to have inside, I suggest using a column
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[600],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo[600],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainPage();
                },
              ),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 26.0,
          ),
        ),
        title: Text(
          "Assessment",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.refresh_rounded,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 35.0),
          child: Column(
            children: [
              // const SizedBox(
              //   height: 15.0,
              // ),
              const Text(
                "Choose your preferred level",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.5,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(
                                      25.0))), //for the round edges
                          builder: (context) {
                            return asssessmentBottomNav();
                          },
                          context: context,
                          isDismissible:
                              true, //boolean if you want to be able to dismiss it
                          isScrollControlled: true,
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 180,
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/numbers.png",
                              height: 120,
                              width: 160,
                            ),
                            Text(
                              "Lower Primary",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(
                                      25.0))), //for the round edges
                          builder: (context) {
                            return asssessmentBottomNav();
                          },
                          context: context,
                          isDismissible:
                              true, //boolean if you want to be able to dismiss it
                          isScrollControlled: true,
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 180,
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/arithmetic1.png",
                              height: 130,
                              width: 170,
                            ),
                            Text(
                              "Upper Primary",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(
                                      25.0))), //for the round edges
                          builder: (context) {
                            return asssessmentBottomNav();
                          },
                          context: context,
                          isDismissible:
                              true, //boolean if you want to be able to dismiss it
                          isScrollControlled: true,
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 180,
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/cone1.png",
                              height: 130,
                              width: 170,
                            ),
                            Text(
                              "Junior High",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(
                                      25.0))), //for the round edges
                          builder: (context) {
                            return asssessmentBottomNav();
                          },
                          context: context,
                          isDismissible:
                              true, //boolean if you want to be able to dismiss it
                          isScrollControlled: true,
                        );
                      },
                      child: Container(
                        height: 200,
                        width: 180,
                        padding:
                            const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/images/log.png",
                              height: 130,
                              width: 170,
                            ),
                            Text(
                              "Senior High",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

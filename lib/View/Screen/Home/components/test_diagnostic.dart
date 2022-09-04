import 'package:flutter/material.dart';
import 'package:uidesign/Model/components/assessment_model.dart';

import 'preferred_assessment_page.dart';

class TestDiagnostic extends StatefulWidget {
  const TestDiagnostic({Key? key}) : super(key: key);
  _TestDiagnosticState createState() => _TestDiagnosticState();
}

class _TestDiagnosticState extends State<TestDiagnostic> {
  List<AssessmentModel> testAnswers = [
    AssessmentModel(answer: "Shares"),
    AssessmentModel(answer: "Dividend"),
    AssessmentModel(answer: "Wages"),
    AssessmentModel(answer: "Commission"),
  ];

  Widget answerBoxes(testAnswer) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.only(bottom: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.grey,
          width: 1.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            testAnswer.answer,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 22.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 25.0),
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          leading: GestureDetector(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(20.0))), //for the round edges
                builder: (context) {
                  return Container(
                    height: 400,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45.0, vertical: 50.0),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 35.0),
                          child: Center(
                            child: Text(
                              "Are you sure you want to quit the test?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 31.0,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
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
                            height: 70,
                            margin: const EdgeInsets.only(bottom: 15.0),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Yes",
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return TestDiagnostic();
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 70,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25.0, vertical: 15.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "No",
                                style: TextStyle(
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                context: context,
                isDismissible:
                    true, //boolean if you want to be able to dismiss it
                isScrollControlled: true,
              );
            },
            child: Icon(
              Icons.arrow_back,
              size: 30.0,
              color: Colors.grey[900],
            ),
          ),
          title: Text(
            "Test Diagnostic",
            style: TextStyle(color: Colors.grey[700]),
          ),
          actions: [
            Icon(
              Icons.more_vert,
              size: 30.0,
              color: Colors.grey[900],
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              height: 60,
              decoration: const BoxDecoration(
                //color: Colors.blueGrey[900],
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topLeft,
                  colors: [
                    Color(0xff263238),
                    Color(0xff3c474c),
                    Color(0xff515b60),
                    Color(0xff677074),
                  ],
                ),
              ),
              child: Row(
                children: [
                  Text(
                    "0:19:52",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey[400],
                  ),
                  Image.asset(
                    "assets/images/diamond.png",
                    height: 24.0,
                    width: 24.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    "0.0%",
                    style: TextStyle(
                      color: Colors.cyan[300],
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Image.asset(
                    "assets/images/speedometer.png",
                    height: 23.0,
                    width: 23.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    "0.00s",
                    style: TextStyle(
                      color: Colors.cyan[300],
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Image.asset(
                    "assets/images/check.png",
                    height: 20.0,
                    width: 20.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    "0",
                    style: TextStyle(
                      color: Colors.cyan[300],
                    ),
                  ),
                  const SizedBox(width: 20.0),
                  Image.asset(
                    "assets/images/bad.png",
                    height: 23.0,
                    width: 23.0,
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    "0",
                    style: TextStyle(
                      color: Colors.cyan[300],
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 18.0),
              child: Center(
                child: Text(
                  "The reward which accues to the invester is",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 14.0),
              decoration: BoxDecoration(color: Colors.grey[700]),
              child: Center(
                child: Row(
                  children: [
                    Text(
                      "Choose the right answer to the question above",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                child: ListView(
                  children: testAnswers
                      .map((testAnswer) => answerBoxes(testAnswer))
                      .toList(),
                ),
              ),
            ),
            //const Spacer(),
            Center(
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.tealAccent[400],
                  //borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.white,
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

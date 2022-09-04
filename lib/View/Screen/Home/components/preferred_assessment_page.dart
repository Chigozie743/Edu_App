import 'package:flutter/material.dart';
import 'package:uidesign/View/Screen/Home/components/assessment.dart';

import 'test_diagnostic.dart';

class PreferredAssessmentPage extends StatefulWidget {
  const PreferredAssessmentPage({Key? key}) : super(key: key);
  @override
  _PreferredAssessmentPageState createState() =>
      _PreferredAssessmentPageState();
}

class _PreferredAssessmentPageState extends State<PreferredAssessmentPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      minimum: const EdgeInsets.only(top: 25.0),
      child: Scaffold(
        //backgroundColor: Colors.grey[100],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return AssessmentPage();
                  },
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 30.0,
            ),
          ),
          title: const Text(
            "Assessment",
            style: TextStyle(
              fontSize: 27.0,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              Container(
                width: 400,
                height: 400,
                //decoration: BoxDecoration(border: Border.all(color: Colors.black)),
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      child: Image.asset(
                        "assets/images/background2.png",
                        fit: BoxFit.fitWidth,
                        width: size.width * 5.35,
                      ),
                    ),
                    Positioned(
                      child: Image.asset(
                        "assets/images/team1.png",
                        //fit: BoxFit.fitWidth,
                        width: size.width * 2.35,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 23,
                      child: Center(
                        child: Container(
                          height: 200,
                          width: 370,
                          child: Text(
                            "This assessment helps us to understand your weaknesses and strengths so as to help you prep better",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 19.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
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
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.tealAccent[400],
                      //borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "Begin Assessment",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

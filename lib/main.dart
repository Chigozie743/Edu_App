// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'View/Screen/welcome/welcome_page.dart';
import 'constants.dart';

// import 'View/Screen/Home/components/assessment.dart';
// import 'View/Screen/Home/components/preferred_assessment_page.dart';
// import 'View/Screen/Home/components/test_diagnostic.dart';
// import 'View/Screen/Profile/components/list_courses.dart';
// import 'View/Screen/Profile/components/main_profile_screen.dart';
// import 'View/Screen/Test/test_category.dart';
// import 'View/Screen/Test/testing_class.dart';

// import 'View/Screen/welcome/main_page.dart';
// import 'View/Screen/Courses/courses.dart';
// import 'View/Screen/Profile/profile_page.dart';
// import 'View/Screen/Home/home_page.dart';

// import 'View/Screen/Profile/components/commission.dart';
// import 'View/Screen/Profile/components/list_courses1.dart';
// import 'item.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UI Design',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomePage(),
    );
  }
}

// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:uidesign/Model/components/profile_model.dart';
import 'package:uidesign/Model/components/already_have_an_account_check.dart';
import 'package:uidesign/View/Screen/Login/login_page.dart';
import 'package:uidesign/View/Screen/Profile/components/commission.dart';
import 'package:uidesign/View/Screen/Profile/components/list_courses.dart';
import 'package:uidesign/View/Screen/Profile/components/list_saved_questions.dart';
import 'package:uidesign/View/Screen/Profile/components/main_profile_screen.dart';
import 'package:uidesign/idapp2.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // List<ProfileModel> profiles = [
  //   ProfileModel(
  //     icon1: Icons.video_library,
  //     text: "Courses",
  //     icon2: Icons.arrow_forward_ios,
  //   ),
  //   ProfileModel(
  //     icon1: Icons.bookmark_rounded,
  //     text: "Saved Questions",
  //     icon2: Icons.arrow_forward_ios,
  //   ),
  //   ProfileModel(
  //     icon1: Icons.paid_rounded,
  //     text: "Commissions",
  //     icon2: Icons.arrow_forward_ios,
  //   ),
  //   ProfileModel(
  //     icon1: Icons.person_rounded,
  //     text: "Profile",
  //     icon2: Icons.arrow_forward_ios,
  //   ),
  // ];

  // Widget profileMenu(profile) {
  //   return Container(
  //     margin: EdgeInsets.only(bottom: 32.0),
  //     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //       GestureDetector(
  //         onTap: press,
  //         child:
  //             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
  //           Icon(
  //             profile.icon1,
  //             color: Colors.grey[900],
  //             size: 26.5,
  //           ),
  //           SizedBox(width: 30),
  //           Text(
  //             profile.text,
  //             style: TextStyle(
  //               color: Colors.grey[900],
  //               fontWeight: FontWeight.w600,
  //               fontSize: 22,
  //             ),
  //           ),
  //         ]),
  //       ),
  //       Icon(
  //         profile.icon2,
  //         color: Colors.grey[400],
  //         size: 18,
  //       ),
  //     ]),
  //   );
  // }

  Widget profileCourses() {
    return Container(
      margin: EdgeInsets.only(bottom: 32.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ListCourses();
                },
              ),
            );
          },
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(
              Icons.video_library,
              color: Colors.grey[900],
              size: 26.5,
            ),
            SizedBox(width: 30),
            Text(
              "Courses",
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ]),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey[400],
          size: 18,
        ),
      ]),
    );
  }

  Widget profileQuestions() {
    return Container(
      margin: const EdgeInsets.only(bottom: 32.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ListSavedQuestions();
                },
              ),
            );
          },
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(
              Icons.video_library,
              color: Colors.grey[900],
              size: 26.5,
            ),
            const SizedBox(width: 30),
            Text(
              "Saved Questions",
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ]),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey[400],
          size: 18,
        ),
      ]),
    );
  }

  Widget profileCommissions() {
    return Container(
      margin: const EdgeInsets.only(bottom: 32.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const CommissionPage();
                },
              ),
            );
          },
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(
              Icons.video_library,
              color: Colors.grey[900],
              size: 26.5,
            ),
            const SizedBox(width: 30),
            Text(
              "Commissions",
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ]),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey[400],
          size: 18,
        ),
      ]),
    );
  }

  Widget profileProfile() {
    return Container(
      margin: const EdgeInsets.only(bottom: 32.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return MainProfileScreen();
                },
              ),
            );
          },
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Icon(
              Icons.video_library,
              color: Colors.grey[900],
              size: 26.5,
            ),
            const SizedBox(width: 30),
            Text(
              "Profile",
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
          ]),
        ),
        Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey[400],
          size: 18,
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: const EdgeInsets.only(top: 20.0),
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        // ignore: avoid_unnecessary_containers
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Container(
                      height: 60,
                      width: 60,
                      padding: const EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green[700],
                      ),
                      // The mathematics btw height & width of the 2 container (60 & 54 respectively) is from the padding (3+3 = 6, therefore 60-6 =54); for Centrality
                      child: Center(
                        child: Column(
                          children: [
                            Container(
                              width: 54,
                              height: 54,
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue[900],
                                child: Text(
                                  "GW",
                                  style: TextStyle(
                                    color: Colors.grey[200],
                                    //fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welome",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Gozie Williams",
                          // ignore: unnecessary_const
                          style: TextStyle(
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ]),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const LoginPage();
                          },
                        ),
                      );
                    },
                    child: Container(
                      child: Icon(
                        Icons.logout_outlined,
                        color: Colors.grey[900],
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Divider(
                height: 30,
                thickness: 2,
                color: Colors.grey[200],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: const EdgeInsets.all(10.0),
                  children: <Widget>[
                    profileCourses(),
                    profileQuestions(),
                    profileCommissions(),
                    profileProfile(),
                  ],
                  //profiles.map((profile) => profileMenu(profile)).toList(),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(25),
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.tealAccent[100],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.headset_mic_outlined,
                      color: Colors.green[800],
                      size: 30,
                    ),
                    Text(
                      "How can we help you?",
                      style: TextStyle(
                        color: Colors.green[800],
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

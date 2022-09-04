import 'package:flutter/material.dart';
import 'package:uidesign/Model/components/profile_model.dart';
import 'package:uidesign/View/Screen/Profile/profile_page.dart';

class MainProfileScreen extends StatefulWidget {
  const MainProfileScreen({Key? key}) : super(key: key);
  _MainProfileScreenState createState() => _MainProfileScreenState();
}

class _MainProfileScreenState extends State<MainProfileScreen> {
  List<ProfileModel> profiles = [
    ProfileModel(
      text: "Tests",
      score: 0,
      icon2: Icons.arrow_forward_ios,
    ),
    ProfileModel(
      text: "Questions",
      score: 0,
      icon2: Icons.arrow_forward_ios,
    ),
    ProfileModel(
      text: "Groups",
      score: 0,
      icon2: Icons.arrow_forward_ios,
    ),
    ProfileModel(
      text: "Friends",
      score: 0,
      icon2: Icons.arrow_forward_ios,
    ),
    ProfileModel(
      text: "Purchases",
      score: 3,
      icon2: Icons.arrow_forward_ios,
    ),
  ];

  Widget profileTable(profile) {
    return Container(
      margin: EdgeInsets.only(bottom: 32.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          width: 120,
          child: Text(
            profile.text,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 25,
            ),
          ),
        ),
        Container(
          width: 20,
          child: Text(
            "${profile.score}",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 25,
            ),
          ),
        ),
        Container(
          height: 32,
          width: 32,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[600],
            size: 20,
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 20.0),
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
                            return ProfilePage();
                          },
                        ),
                      );
                    },
                    child: Icon(
                      Icons.west_sharp,
                      color: Colors.grey[800],
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 120),
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.tealAccent,
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            height: 90,
                            width: 90,
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey[500],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //SizedBox(width: 60),
                  Container(
                    height: 70,
                    child: VerticalDivider(
                      color: Colors.grey[500],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Joined",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "2mon ago",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Gozie",
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            "Williams",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            size: 29,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 3,
                height: 50,
                color: Colors.white,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.all(10),
                  children:
                      profiles.map((profile) => profileTable(profile)).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

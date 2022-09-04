import 'package:flutter/material.dart';
import 'package:uidesign/View/Screen/Profile/profile_page.dart';

class CommissionPage extends StatefulWidget {
  const CommissionPage({Key? key}) : super(key: key);
  _CommissionPageState createState() => _CommissionPageState();
}

class _CommissionPageState extends State<CommissionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ProfilePage();
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
                    "Commissions",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                ],
              ),
            ),
            Text(
              "Total Commission",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8.0),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "NGN",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5.0),
                Text(
                  "0.00",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10.0, 20.0, 5.0, 10.0),
                        height: 160,
                        width: 280,
                        decoration: BoxDecoration(
                          //color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(18),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topLeft,
                            colors: [
                              Color(0xff3e2723),
                              Color(0xff513d39),
                              Color(0xff65524f),
                              Color(0xff786865),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "E99DFD",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Referral Codes",
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                        fontSize: 17.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Center(
                                  child: Icon(
                                    Icons.content_copy,
                                    color: Colors.grey[400],
                                    size: 27.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        bottom: -40,
                        child: Container(
                          padding: EdgeInsets.all(53),
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(
                                width: 10,
                                color: Color(0xff513d39),
                              )),
                        ),
                      ),
                      Positioned(
                        right: 20.0,
                        bottom: 10.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          //crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "GHC",
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 17.0,
                              ),
                            ),
                            Center(
                              child: Text(
                                "0.00",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  //Spacer(),
                  SizedBox(width: 8.0),
                  Container(
                    height: 160,
                    width: 280,
                    decoration: BoxDecoration(
                      color: Colors.lightBlue[100],
                      borderRadius: BorderRadius.circular(18),
                      //border: Border(),
                    ),
                    child: Column(
                      children: [
                        Text("create new code hhhh"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 23),
            Text(
              "Transaction History",
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 23),
            Row(
              children: [
                Container(
                  width: 120,
                  child: Text(
                    "Date & Time",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 90,
                  child: Text(
                    "Activity",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 80,
                  child: Text(
                    "Code",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 80,
                  child: Text(
                    "Amount",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 30,
              thickness: 1,
              color: Colors.grey[900],
            ),
            const SizedBox(height: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 110,
                  child: Text(
                    "2022-07-09 | \n 15:54:53",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //const Spacer(),
                Container(
                  width: 80,
                  child: Text(
                    "Code  Applied",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 80,
                  child: Text(
                    "BF82C4",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: 80,
                  child: Text(
                    "GHC 0",
                    style: TextStyle(
                      color: Colors.grey[900],
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

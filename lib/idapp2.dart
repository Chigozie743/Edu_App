import 'package:flutter/material.dart';
import 'package:uidesign/hexcolor.dart';

void main() => runApp(MaterialApp(
      home: SkillupCard(),
    ));

class SkillupCard extends StatefulWidget {
  @override
  State<SkillupCard> createState() => _SkillupCardState();
}

class _SkillupCardState extends State<SkillupCard> {
  int skillupLevel = 0;

  Color _purple = HexColor("#6908D6");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ENTIRE BACKGROUND COLOR STATED HERE
      backgroundColor: Colors.grey[300],
      // UP BAR WIDGET
      appBar: AppBar(
        title: Text(
          'Skillup ID Card',
          style: TextStyle(
            color: _purple,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
      ),
      // ACTION COUNTER BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            skillupLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[600],
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //     // To fix the whiteness and invisibility, use type:BottomNavigationBarType.fixed
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: Colors.grey[700],
      //     selectedItemColor: Colors.amber,
      //     unselectedItemColor: Colors.grey[400],
      //     items: [
      //       BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: 'My Account'),
      //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //       BottomNavigationBarItem(icon: Icon(Icons.menu_book_sharp), label: 'Learning'),
      //       BottomNavigationBarItem(icon: Icon(Icons.phone), label: 'Call')
      //     ]),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // TO DROP A CIRCLE IMAGE FOR THE PASSPORT
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/passport.jpg'),
                radius: 50.0,
              ),
            ),
            // PLACING A DIVIDER BETWEEN THE IMAGE AND NAME
            Divider(
              height: 90.0,
              color: Colors.white,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: _purple,
                letterSpacing: 2.0,
              ),
            ),
            // HEIGHT BETWEEN TWO WIDGET FOR VERTICAL DISTANCE
            SizedBox(height: 10.0),
            Text(
              'Williams Gozie',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            // HEIGHT BETWEEN TWO WIDGET FOR VERTICAL DISTANCE
            SizedBox(height: 30.0),
            Text(
              'CURRENT SKILLUP LEVEL',
              style: TextStyle(
                color: _purple,
                letterSpacing: 2.0,
              ),
            ),
            // // HEIGHT BETWEEN TWO WIDGET FOR VERTICAL DISTANCE
            SizedBox(height: 10.0),
            Text(
              '$skillupLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: _purple,
                ),
                // WIDTH BETWEEN TWO WIDGET FOR HORINZONTAL DISTANCE
                SizedBox(width: 10.0),
                Text(
                  'iwuohacwilliams@yahoo.com',
                  style: TextStyle(
                    color: _purple,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

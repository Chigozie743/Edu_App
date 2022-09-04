import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;

  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView(
        children: [
          Container(
            height: size.height,
            width: double.infinity,
            // Here I can use size.width but I used double.infinity because both work as same
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/top2.png",
                    width: size.width * 0.25,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/bottom2.png",
                    width: size.width * 0.25,
                  ),
                ),
                child,
              ],
            ),
          ),
        ],
      ),
    );
  }
}

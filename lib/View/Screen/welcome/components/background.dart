import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This Size provides us with the total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: ListView(
        children: [
          Container(
            height: size.height,
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/top.png",
                    width: size.width * 0.3,
                    // height: 5,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Image.asset(
                    "assets/images/bottom.png",
                    width: size.width * 0.3,
                    // height: 5,
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

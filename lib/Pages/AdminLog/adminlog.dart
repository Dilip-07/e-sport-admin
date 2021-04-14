import 'package:admin/Pages/AdminLog/Components/logincard.dart';
import 'package:admin/Pages/Home/home_screen.dart';

import 'package:admin/Utils/constants.dart';
import 'package:flutter/material.dart';

class AdminLog extends StatefulWidget {
  @override
  _AdminLogState createState() => _AdminLogState();
}

class _AdminLogState extends State<AdminLog> {
  Option selectedOption = Option.LogIn;

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    print(size.height);
    print(size.width);

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                    height: double.infinity,
                    width: size.width / 2,
                    color: KPrimarycolor),
                Container(
                    height: double.infinity,
                    width: size.width / 2,
                    color: KPrimarycolor),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's Kick Now !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "It's easy and takes less than 30 seconds",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.all(32),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                        size: 28,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "HOME",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AnimatedSwitcher(
                duration: Duration(milliseconds: 500),
                transitionBuilder: (widget, animation) =>
                    ScaleTransition(child: widget, scale: animation),
                child:
                    selectedOption == Option.LogIn ? Logincard() : Container()),
          ],
        ),
      ),
    );
  }
}

import 'package:admin/Pages/AdminLog/adminlog.dart';
import 'package:admin/Utils/constants.dart';
import 'package:flutter/material.dart';

class CAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Text(
            "Esport Event Pool".toUpperCase(),
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: KPrimarycolor,
            ),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            // ignore: deprecated_member_use
            child: FlatButton(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              color: KPrimarycolor,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AdminLog()));
              },
              child: Text(
                "get started".toUpperCase(),
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

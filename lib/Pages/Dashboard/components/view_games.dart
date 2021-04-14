import 'package:admin/Utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Viewgames extends StatefulWidget {
  @override
  _ViewgamesState createState() => _ViewgamesState();
}

class _ViewgamesState extends State<Viewgames> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Games',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 5, bottom: 10),
          height: 3,
          width: 1000,
          decoration: BoxDecoration(
              color: KPrimarycolor, borderRadius: BorderRadius.circular(15)),
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          height: 130,
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Text(
                'pubg',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              Spacer(),
              InkWell(
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        color: KPrimarycolor,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.delete, size: 16, color: Colors.white),
                  ),
                  onTap: () => openFeaturedDialog(context)),
            ],
          ),
        )
      ],
    );
  }
}

openFeaturedDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          contentPadding: EdgeInsets.all(50),
          elevation: 0,
          children: <Widget>[
            Text('Remove Game',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900)),
            SizedBox(
              height: 10,
            ),
            Text('Do you want to remove this game?',
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 16,
                    fontWeight: FontWeight.w700)),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Row(
              children: <Widget>[
                // ignore: deprecated_member_use
                FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: KPrimarycolor,
                    child: Text(
                      'Yes',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    onPressed: () {}),
                SizedBox(width: 10),
                // ignore: deprecated_member_use
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  color: KPrimarycolor,
                  child: Text(
                    'No',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ))
          ],
        );
      });
}

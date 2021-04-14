import 'package:admin/Pages/Dashboard/components/update_tournament.dart';
import 'package:admin/Utils/cacheimage.dart';
import 'package:admin/Utils/constants.dart';
import 'package:admin/Utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Viewtournaments extends StatefulWidget {
  @override
  _ViewtournamentsState createState() => _ViewtournamentsState();
}

class _ViewtournamentsState extends State<Viewtournaments> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Tournaments',
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
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.only(top: 5, bottom: 5),
          height: 165,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: <Widget>[
              Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'besto',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(LineIcons.line, size: 15, color: Colors.grey),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Antra Ganezone',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(width: 10),
                          Icon(Icons.access_time, size: 15, color: Colors.grey),
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            '11 April 2021',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10),
                          InkWell(
                            child: Container(
                              height: 35,
                              width: 45,
                              decoration: BoxDecoration(
                                  color: KPrimarycolor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.comment,
                                size: 16,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {},
                          ),
                          SizedBox(width: 10),
                          InkWell(
                            child: Container(
                                height: 35,
                                width: 45,
                                decoration: BoxDecoration(
                                    color: KPrimarycolor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(Icons.edit,
                                    size: 16, color: Colors.white)),
                            onTap: () {
                              nextScreen(context, Updatetournament());
                            },
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 35,
                            padding: EdgeInsets.only(
                                left: 15, right: 15, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: KPrimarycolor,
                                border: Border.all(color: Colors.grey[300]),
                                borderRadius: BorderRadius.circular(30)),
                            // ignore: deprecated_member_use
                            child: FlatButton.icon(
                                onPressed: () {},
                                icon: Icon(
                                  LineIcons.user,
                                  color: Colors.white,
                                ),
                                label: Text(
                                  'Participants',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 35,
                            padding: EdgeInsets.only(
                                left: 15, right: 15, top: 5, bottom: 5),
                            decoration: BoxDecoration(
                                color: KPrimarycolor,
                                border: Border.all(color: KPrimarycolor),
                                borderRadius: BorderRadius.circular(30)),
                            // ignore: deprecated_member_use
                            child: FlatButton.icon(
                                onPressed: () => openFeaturedDialog(context),
                                icon: Icon(Icons.delete, color: Colors.white),
                                label: Text(
                                  'Delete Tournament',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
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
            Text('Remove Tournaments',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900)),
            SizedBox(
              height: 10,
            ),
            Text('Do you want to remove the tournaments?',
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

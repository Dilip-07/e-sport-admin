import 'package:admin/Utils/inputdeco.dart';
import 'package:admin/Utils/constants.dart';
import 'package:flutter/material.dart';

class Addgames extends StatefulWidget {
  @override
  _AddgamesState createState() => _AddgamesState();
}

class _AddgamesState extends State<Addgames> {
  final formKey = GlobalKey<FormState>();
  TextEditingController gamenameController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  bool changeStarted = false;

  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Add Games",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, bottom: 10),
              height: 3,
              width: 1000,
              decoration: BoxDecoration(
                  color: KPrimarycolor,
                  borderRadius: BorderRadius.circular(15)),
            ),
            SizedBox(
              height: 100,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: gamenameController,
                    decoration: inputDecoration(
                        'Enter game name', 'Game Name', gamenameController),
                    validator: (value) {
                      if (value.isEmpty) return 'Old password is empty!';

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: imageController,
                    decoration: inputDecoration(
                        'Enter Image Url', 'Image Url', imageController),
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) return 'New password is empty!';

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      color: KPrimarycolor,
                      height: 45,
                      child: changeStarted == true
                          ? Center(
                              child: Container(
                                  height: 30,
                                  width: 30,
                                  child: CircularProgressIndicator()),
                            )
                          // ignore: deprecated_member_use
                          : FlatButton(
                              child: Text(
                                'Add Game',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {})),
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
            )
          ],
        ));
  }
}

import 'package:admin/Utils/inputdeco.dart';
import 'package:admin/Utils/constants.dart';
import 'package:flutter/material.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  final formKey = GlobalKey<FormState>();
  var oldpasswordController = TextEditingController();
  var newpasswordController = TextEditingController();
  bool changeStarted = false;

  void dispose() {
    oldpasswordController.dispose();
    newpasswordController.dispose();
    super.dispose();
  }

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
              "Change Admin Password",
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
                    controller: oldpasswordController,
                    decoration: inputDecoration('Enter old password',
                        'Old Password', oldpasswordController),
                    validator: (value) {
                      if (value.isEmpty) return 'Old password is empty!';

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    controller: newpasswordController,
                    decoration: inputDecoration('Enter new password',
                        'New Password', newpasswordController),
                    obscureText: true,
                    validator: (value) {
                      if (value.isEmpty) return 'New password is empty!';

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 200,
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
                                'Update Password',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {})),
                ],
              ),
            )
          ],
        ));
  }
}

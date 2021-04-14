import 'package:admin/Utils/inputdeco.dart';
import 'package:admin/Utils/constants.dart';
import 'package:flutter/material.dart';

class Addtournaments extends StatefulWidget {
  @override
  _AddtournamentsState createState() => _AddtournamentsState();
}

class _AddtournamentsState extends State<Addtournaments> {
  var formKey = GlobalKey<FormState>();
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool uploadStarted = false;

  TextEditingController organizationnameController = TextEditingController();
  TextEditingController tournamentsnameController = TextEditingController();
  TextEditingController startdateController = TextEditingController();
  TextEditingController enddateController = TextEditingController();
  TextEditingController image1Controller = TextEditingController();
  TextEditingController image2Controller = TextEditingController();
  TextEditingController tournamentsdetailsController = TextEditingController();
  TextEditingController rulesController = TextEditingController();
  TextEditingController prizepoolController = TextEditingController();
  TextEditingController contactvenueController = TextEditingController();

  void dispose() {
    organizationnameController.dispose();
    tournamentsnameController.dispose();
    startdateController.dispose();
    enddateController.dispose();
    image1Controller.dispose();
    image2Controller.dispose();
    tournamentsdetailsController.dispose();
    rulesController.dispose();
    prizepoolController.dispose();
    contactvenueController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: h * 0.10,
              ),
              Text(
                'Add Tournaments',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
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
                height: 70,
              ),
              TextFormField(
                decoration: inputDecoration('Enter Organization Name',
                    'Organization Name', organizationnameController),
                controller: organizationnameController,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter details (Html or Normal Text)',
                    border: OutlineInputBorder(),
                    labelText: 'Organization info',
                    contentPadding:
                        EdgeInsets.only(right: 0, left: 10, top: 15, bottom: 5),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[300],
                        child: IconButton(
                            icon: Icon(Icons.close, size: 15),
                            onPressed: () {
                              tournamentsdetailsController.clear();
                            }),
                      ),
                    )),
                textAlignVertical: TextAlignVertical.top,
                minLines: 5,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                controller: tournamentsdetailsController,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputDecoration('Enter Tournament Name',
                    'Tournament Name', tournamentsdetailsController),
                controller: tournamentsdetailsController,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      decoration: inputDecoration('Enter Start Date',
                          'Start Date', startdateController),
                      controller: startdateController,
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) return 'Value is empty';
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: inputDecoration(
                          'Enter End Date', 'End Date', enddateController),
                      keyboardType: TextInputType.number,
                      controller: enddateController,
                      validator: (value) {
                        if (value.isEmpty) return 'Value is empty';
                        return null;
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputDecoration(
                    'Enter image url ', 'Image1', image1Controller),
                controller: image1Controller,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: inputDecoration(
                    'Enter image url', 'Image2', image2Controller),
                controller: image2Controller,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter  details (Html or Normal Text)',
                    border: OutlineInputBorder(),
                    labelText: 'Tournaments details',
                    contentPadding:
                        EdgeInsets.only(right: 0, left: 10, top: 15, bottom: 5),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[300],
                        child: IconButton(
                            icon: Icon(Icons.close, size: 15),
                            onPressed: () {
                              tournamentsdetailsController.clear();
                            }),
                      ),
                    )),
                textAlignVertical: TextAlignVertical.top,
                minLines: 5,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                controller: tournamentsdetailsController,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter  Rules (Html or Normal Text)',
                    border: OutlineInputBorder(),
                    labelText: 'Rules',
                    contentPadding:
                        EdgeInsets.only(right: 0, left: 10, top: 15, bottom: 5),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[300],
                        child: IconButton(
                            icon: Icon(Icons.close, size: 15),
                            onPressed: () {
                              rulesController.clear();
                            }),
                      ),
                    )),
                textAlignVertical: TextAlignVertical.top,
                minLines: 5,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                controller: rulesController,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter  Prize Pool (Html or Normal Text)',
                    border: OutlineInputBorder(),
                    labelText: 'Prize Pool',
                    contentPadding:
                        EdgeInsets.only(right: 0, left: 10, top: 15, bottom: 5),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[300],
                        child: IconButton(
                            icon: Icon(Icons.close, size: 15),
                            onPressed: () {
                              prizepoolController.clear();
                            }),
                      ),
                    )),
                textAlignVertical: TextAlignVertical.top,
                minLines: 5,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                controller: prizepoolController,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText:
                        'Enter  Contact Info and venue (Html or Normal Text)',
                    border: OutlineInputBorder(),
                    labelText: 'Contact Info and Venue',
                    contentPadding:
                        EdgeInsets.only(right: 0, left: 10, top: 15, bottom: 5),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.grey[300],
                        child: IconButton(
                            icon: Icon(Icons.close, size: 15),
                            onPressed: () {
                              contactvenueController.clear();
                            }),
                      ),
                    )),
                textAlignVertical: TextAlignVertical.top,
                minLines: 5,
                maxLines: null,
                keyboardType: TextInputType.multiline,
                controller: contactvenueController,
                validator: (value) {
                  if (value.isEmpty) return 'Value is empty';
                  return null;
                },
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                  color: KPrimarycolor,
                  height: 45,
                  child: uploadStarted == true
                      ? Center(
                          child: Container(
                              height: 30,
                              width: 30,
                              child: CircularProgressIndicator()),
                        )
                      // ignore: deprecated_member_use
                      : FlatButton(
                          child: Text(
                            'Upload Tournaments',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {})),
              SizedBox(
                height: 50,
              ),
            ],
          )),
    );
  }
}

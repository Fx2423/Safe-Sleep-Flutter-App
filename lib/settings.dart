import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:giffy_dialog/giffy_dialog.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:safe_sleep/colors.dart';
import 'package:safe_sleep/common/theme_helper.dart';
import 'package:safe_sleep/dragger.dart';
import 'package:safe_sleep/main.dart';
import 'package:safe_sleep/methods.dart';
import 'package:safe_sleep/smart/widgets/header_widget.dart';
import 'package:flutter/src/painting/gradient.dart' as pf;
import 'components/rounded_btn/rounded_btn.dart';
import 'package:safe_sleep/smart/login_page.dart'; // Ensure LoginPage is correctly imported

final FirebaseAuth _auth = FirebaseAuth.instance;
var chrtsp = TextEditingController();

class Settings extends KFDrawerContent {
  Settings({
    Key? key,
  });

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  sucess() {
    Navigator.of(context).pop();
    alertbox(
        context,
        'RTSP CONFIRMATION',
        'RTSP Link of the video Footage has been changed.',
        'images/success.gif');
  }

  failure() {
    Navigator.of(context).pop();
    alertbox(context, 'Connection Failed',
        'Please Check your Internet Connection', 'asset/animation/alerts.gif');
  }

  // This function logs out the user and navigates to the LoginPage.
  void logout() async {
    try {
      await _auth.signOut();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    } catch (e) {
      print(
          "Error logging out: $e"); // Optionally, add error handling or user feedback
    }
  }

  @override
  Widget build(BuildContext context) {
    Color c1 = Theme.of(context).primaryColor;
    Color c2 = Theme.of(context).secondaryHeaderColor;
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 150,
                child: HeaderWidget(
                  150,
                  true,
                  Icon(Icons.login_rounded),
                  false,
                  fun: logout, // Updated to use the logout function
                  notiText: 'SETTINGS',
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    width: 250,
                    padding: EdgeInsets.only(left: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10),
                            Container(
                              child: TextFormField(
                                controller: chrtsp,
                                decoration: ThemeHelper().textInputDecoration(
                                    "Change RTSP",
                                    "Enter your camera RTSP Link"),
                              ),
                              decoration:
                                  ThemeHelper().inputBoxDecorationShaddow(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    padding: EdgeInsets.only(top: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child: RaisedGradientButton(
                        child: Text('Change',
                            style: TextStyle(color: Colors.white)),
                        gradient: pf.LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.0, 1.0],
                          colors: [c1, c2],
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                    child: CircularProgressIndicator());
                              });
                          FirebaseFirestore.instance
                              .collection('Users')
                              .doc(_auth.currentUser!.uid)
                              .update({'RTSP': chrtsp.text})
                              .then((value) => sucess())
                              .timeout(const Duration(seconds: 10))
                              .catchError((error, stackTrace) => failure());
                        },
                        circular: 20,
                      )),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

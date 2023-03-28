import 'package:flutter/material.dart';
import 'package:mesurale/core/utils/values/colors.dart';
import 'package:shared_preferences/shared_preferences.dart';

//To ensure that the LandingPage widget is displayed every time the app is launched after being closed, we're using
//the SharedPreferences package to store a boolean value "hasSeenLandingPage" that indicates
// whether the user has already seen the landing page.

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: secondaryColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  //color: Colors.deepOrange,
                  child: Image.asset('assets/logo.png')),
              Text('Bienvenue sur Mesurale! ',
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20)),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(themeColor),
                  // Set background color
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  // Set text color
                  textStyle: MaterialStateProperty.all<TextStyle>(
                      TextStyle(fontSize: 20)),
                  // Set text style
                  elevation: MaterialStateProperty.all<double>(10),
                  // Set button elevation
                  padding:
                      MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                  // Set button padding
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      // Set button border
                    ),
                  ),
                ),
                onPressed: () async {
                  final prefs = await SharedPreferences.getInstance();
                  prefs.setBool('hasSeenLandingPage', true);
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('On commence!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

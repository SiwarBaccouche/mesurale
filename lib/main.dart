import 'package:flutter/material.dart';
import 'package:mesurale/features/home_features/views/landing_page.dart';
import 'core/utils/values/colors.dart';
import 'home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

//To ensure that the LandingPage widget is displayed every time the app is launched after being closed, we're using
//the SharedPreferences package to store a boolean value "hasSeenLandingPage" that indicates
// whether the user has already seen the landing page.

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final hasSeenLandingPage = prefs.getBool('hasSeenLandingPage') ?? false;
  runApp(MyApp(hasSeenLandingPage));
}

class MyApp extends StatelessWidget {
  final bool hasSeenLandingPage;

  MyApp(this.hasSeenLandingPage);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mesurale',
      initialRoute: hasSeenLandingPage ? '/home' : '/',
      routes: {
        '/': (context) => LandingPage(),
        '/home': (context) => MyHomePage(title: "Mesurale"),
      },
      theme: ThemeData(
        primaryColor: themeColor,
      ),
    );
  }
}

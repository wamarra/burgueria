import 'package:burgueria/pages/home_screen.dart';
import 'package:burgueria/pages/list_screen.dart';
import 'package:burgueria/pages/login_screen.dart';
import 'package:burgueria/pages/view_screen.dart';
import 'package:burgueria/splash_screen.dart';
import 'package:flutter/material.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => HomeScreen(),
  "/login": (BuildContext context) => LoginScreen(),
  "/list": (BuildContext context) => ListScreen(),
  "/view": (BuildContext context) => ViewScreen(),
};

void main() => runApp(
      new MaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xff8D0000),
          accentColor: Colors.yellowAccent,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: routes,
      ),
    );

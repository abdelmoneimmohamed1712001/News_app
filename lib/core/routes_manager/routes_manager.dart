import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/ui/home/home_screen.dart';

class AppRoutes {
  static const String splashRoute = '/splash';
  static const String homeRoute = '/';

static Route<dynamic>? onGenerateRoute(RouteSettings Settings) {
  switch (Settings.name) {
    case homeRoute:{
      return MaterialPageRoute(builder: (context) => HomeScreen(),);
    }
    default : {
      return MaterialPageRoute(builder: (context) => HomeScreen(),);

    }
  }
}
}
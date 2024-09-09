import 'package:flutter/material.dart';
import 'package:manager_app/screens/counter/counter_screen.dart';
import 'package:manager_app/screens/home/home_screen.dart'; 
import 'route_names.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case RouteNames.counter:
        return MaterialPageRoute(builder: (_) => CounterScreen());
      default:
        return MaterialPageRoute(builder: (_) => HomeScreen()); // Mặc định về trang chủ
    }
  }
}

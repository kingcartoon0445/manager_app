import 'package:flutter/material.dart';

import '../../main.dart'; 

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to ${AppConfig.instance.appName}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.counter);
              },
              child: Text('Go to Counter Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

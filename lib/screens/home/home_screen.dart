import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:manager_app/routes/app_route.dart';

import '../../main.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to ${AppConfig.instance.appName}'),
            ElevatedButton(
              onPressed: () {
                context.router.push(const CounterRoute());
              },
              child: const Text('Go to Counter Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

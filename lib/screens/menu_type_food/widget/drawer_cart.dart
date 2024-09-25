import 'package:flutter/material.dart';

import '../../../export_global.dart';

class DrawerCart extends StatelessWidget {
  const DrawerCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(),
            child: Column(
              children:  [
                Expanded(
                    child: Center(
                        child: Text(
                  'Your order',
                  style: context.textTheme.displayLarge
                ))),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: ColorName.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 7.7,
                    color: Color(0x33000000),
                    offset: Offset(
                      0,
                      3,
                    ),
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    Assets.images.demoMeet.path,
                    scale: 4,
                  ),
                  const Row(
                    children: [
                      Column(children: [
                        Text("Thịt đùi"),
                        Text("10.00")
                      ],),
                   
                    ],
                  )
                ],
              )),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }
}

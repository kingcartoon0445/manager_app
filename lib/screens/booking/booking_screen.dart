import 'package:flutter/material.dart';
import 'package:manager_app/screens/booking/widget/card.dart';
import 'dart:ui';
import 'package:manager_app/widget/appBar.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarGlobal(
          title: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset("assets/images/icon_table.png"),
            const Text(
              "TAKE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ]),
          const Text("A YOUR TABLE",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32))
        ],
      )),
      body: Center(
          child: Column(
        children: [
          const Card_booking(
              text: "BOOKING", imagePath: 'assets/images/booking.png'),
          const Card_booking(
              text: "TAKE A\nTABLE",
              imagePath: 'assets/images/take_a_table.png'),
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 50),
              child: InkWell(
                child: Image.asset(
                  "assets/images/icon_arrow.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

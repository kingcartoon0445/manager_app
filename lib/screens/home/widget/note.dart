import 'package:flutter/material.dart';
import 'package:manager_app/export_global.dart';
import 'package:manager_app/gen/colors.gen.dart';

class Note extends StatelessWidget {
  const Note({super.key, required this.text, required this.color});
  final String text;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Text(text,
            style: context.textTheme.bodyMedium!.copyWith( color: ColorName.colorGrey4,)
            
        )
      ],
    );
  }
}

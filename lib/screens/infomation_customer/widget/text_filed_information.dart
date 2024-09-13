

import 'package:manager_app/export_global.dart';

class TextFiledInformation extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  const TextFiledInformation({super.key,required this.labelText,required this.controller});

  @override
  Widget build(BuildContext context) {
    return      Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              margin: const EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                border: Border.all(color: ColorName.colorGrey4),
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: TextFormField(
                controller: controller,
                style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color:ColorName.black),
                decoration: InputDecoration(
                    labelText: labelText, border: InputBorder.none,labelStyle: const TextStyle(fontWeight: FontWeight.w300,fontSize: 20,color:ColorName.black),floatingLabelStyle:  const TextStyle(fontWeight: FontWeight.w300,fontSize: 12,color:ColorName.black)),
              ),
            );
       
  }
}
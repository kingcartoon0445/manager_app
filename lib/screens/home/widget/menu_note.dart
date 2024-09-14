import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:manager_app/gen/colors.gen.dart';
import 'package:manager_app/screens/home/widget/note.dart';

class MenuNote extends StatelessWidget {
  const MenuNote({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150 ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Generated code for this Container Widget...
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Note(color:ColorName.colorBusy,text: "orderedFood".tr(),)   // Generated code for this Container Widget...
            ,Note(color:ColorName.colorFree,text: "alreadyBooked".tr(),)   // Generated code for this Container Widget...
           
            ],
          )
          // Generated code for this Container Widget...
          ,
          const SizedBox(height: 10,),
      Note(color:ColorName.colorGrey3,text: "alreadyBooked".tr(),)   // Generated code for this Container Widget...
              ],
      ),
    );
  }
}

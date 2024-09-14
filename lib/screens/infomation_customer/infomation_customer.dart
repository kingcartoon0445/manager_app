import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:manager_app/gen/colors.gen.dart';
import 'package:manager_app/widget/appBar.dart';

import 'widget/text_filed_information.dart';

@RoutePage()
class InfomationCustomerScreen extends StatelessWidget {
  const InfomationCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController phoneController=TextEditingController();
    TextEditingController adressController=TextEditingController();
    TextEditingController numOfPeopleController=TextEditingController();
    TextEditingController numberOfTableController=TextEditingController(); 
    return Scaffold(
      appBar: AppBarGlobal(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Your",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Image.asset(
                  "assets/icons/information.png",
                  height: 55,
                )
              ],
            ),
            const Text(
              "INFORMATION",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            TextFiledInformation(
              controller: nameController,
              labelText: "Your name:",
            ),
             TextFiledInformation(
              controller: phoneController,
              labelText: "Your phone:",
            ),
              TextFiledInformation(
              controller: adressController,
              labelText: "Your adress:",
            ),
              TextFiledInformation(
                controller: numOfPeopleController,
              labelText: "Number of people:",
            ),
             TextFiledInformation(
              controller: numberOfTableController,
              labelText: "Number of table:",
            ),
          ],
        ),
      ),
  
  bottomNavigationBar: Container(height: 100,margin: EdgeInsets.all(20.0),
  
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Image.asset("assets/icons/back.png", height: 50,),
      Container(
      height: 50,
      width: 300,
      child: Center(child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold,color:ColorName.colorGrey4,fontSize: 20),)),
      decoration: BoxDecoration(
        color: ColorName.colorGrey3,
        borderRadius: BorderRadius.circular(8),
      ),
      ),
    ],
  )
,),
    );
  }
}

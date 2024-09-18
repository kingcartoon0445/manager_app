import 'package:flutter/material.dart';
import 'package:manager_app/export_global.dart';
import 'package:manager_app/widget/appBar.dart';

class MenuTypeFoodScreen extends StatelessWidget {
  const MenuTypeFoodScreen({super.key});
@RoutePage()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarGlobal(
        context: context,
        title: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset("assets/icons/setting.png"),
              ListTile(
                title: const Center(
                    child: Text(
                  'FOOD & LIFE',
                  style: TextStyle(
                      color: ColorName.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                )),
                subtitle: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/location.svg",
                        height: 15,
                        color: ColorName.colorGrey2,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      const Text(
                        "Haidilao Huoguo 海底捞火锅 Vincom Phan Văn Trị",
                        style: TextStyle(
                            color: ColorName.colorGrey2, fontSize: 10),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              )
            ],
          ), 
        ),
    );
  }
}
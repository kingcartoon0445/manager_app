import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manager_app/gen/colors.gen.dart';
import '../../widget/appBar.dart';
import 'widget/page_tables.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBarGlobal(title: Column(
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
        
          
        body: PageTables(
          quantityTable: 34,
        ));
  }
}

//  Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Welcome to ${AppConfig.instance.appName}'),
//             ElevatedButton(
//               onPressed: () {
//                 context.router.push(const CounterRoute());
//               },
//               child: const Text('Go to Counter Screen'),
//             ),
            
//           ],
//         ),
//       ),
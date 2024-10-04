import 'package:manager_app/export_global.dart';
import 'package:manager_app/core/routes/app_route.dart';
import '../../widget/appBar.dart';
import 'widget/page_tables.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarGlobal(
          context: context,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              InkWell(
                  onTap: () {
                    print("duy uýd");
                    context.router.push(const ManagerCreateRoute());
                  },
                  child: Image.asset("assets/icons/setting.png")),
              ListTile(
                title: Center(
                    child: Text('FOOD & LIFE',
                        style: context.textTheme.displayLarge!.copyWith(
                          color: ColorName.black,
                        ))),
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
                      Text(
                        "Haidilao Huoguo 海底捞火锅 Vincom Phan Văn Trị",
                        style: context.textTheme.labelSmall!.copyWith(
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
          quantityTable: 8,
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
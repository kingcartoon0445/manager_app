import 'package:manager_app/export_global.dart';
import 'package:manager_app/widget/appBar.dart';

import 'widget/carosel_list_item.dart';
import 'widget/drawer_cart.dart';
import 'widget/no_menu.dart';

@RoutePage()
class MenuTypeFoodScreen extends StatelessWidget {
  const MenuTypeFoodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
          appBar: AppBarGlobal(
            showBack: true,
            context: context,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/icons/nia.png",
                      height: 45,
                    ),
                    Text("Select to", style: context.textTheme.headlineMedium)
                  ],
                ),
                Text("YOUR FOOD", style: context.textTheme.displayLarge),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
            action: [
              Builder(builder: (context1) {
                return InkWell(
                  onTap: () {
                    Scaffold.of(context1).openEndDrawer();
                  },
                  child: Image.asset(
                    "assets/icons/cart.png",
                    scale: 1.8,
                  ),
                );
              }),
              const SizedBox(
                width: 10,
              )
            ],
          ),
          endDrawer: const DrawerCart(),
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: globalData.categories.isEmpty
                ? const NoMenuScreen()
                : CaroselListItem(
                    quantityTable: globalData.categories.length,
                  ),
          ));
    });
  }
}

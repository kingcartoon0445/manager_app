import 'package:manager_app/export_global.dart';
import 'package:manager_app/screens/manager_create/widget/button.dart';
import 'package:manager_app/widget/appBar.dart';

@RoutePage()
class ManagerCreateScreen extends StatelessWidget {
  const ManagerCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarGlobal(
          centerTitle: true,
          title: Column(
            children: [
              Text("create", style: context.textTheme.headlineSmall),
              Text("Your menu".toUpperCase(),
                  style: context.textTheme.displayLarge)
            ],
          ),
          context: context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              // Generated code for this Container Widget...
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 180,
                child: Row(
                  children: [
                    Expanded(
                        child: ButtonManager(
                      iconPath: Assets.icons.foodBar.path,
                      text: "createProductCategories".tr(),
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: ButtonManager(
                      iconPath: Assets.icons.meat.path,
                      text: "createDishes".tr(),
                    )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 110,
                  child: ButtonManager(
                      iconPath: Assets.icons.excel.path,
                      text: "addUsingExcel".tr())),
              const Spacer(),
              InkWell(
                onTap: () {
                  context.router.maybePop();
                },
                child: Image.asset(
                  "assets/icons/back.png",
                  height: 50,
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

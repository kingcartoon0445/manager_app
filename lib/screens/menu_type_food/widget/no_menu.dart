import '../../../export_global.dart';

@RoutePage()
class NoMenuScreen extends StatelessWidget {
  const NoMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            Assets.images.noMenu.path,
            height: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          Text("theMenuIsEmpty".tr(),
              style: context.textTheme.titleLarge!
                  .copyWith(color: ColorName.colorGrey4)),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            width: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorName.colorGrey3,
            ),
            child: Center(
              child: Text("${"settingMenu".tr()} !",
                  style: context.textTheme.titleLarge!.copyWith(
                    color: ColorName.colorGrey4,
                  )),
            ),
          )
        ],
      ),
    );
  }
}

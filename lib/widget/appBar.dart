import 'package:manager_app/export_global.dart';

PreferredSizeWidget AppBarGlobal(
    {required Widget title,
    required BuildContext context,
    List<Widget>? action,
    bool showBack = false}) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 140,
    title: title,
    leading: showBack
        ? InkWell(
            onTap: () {
              context.router.maybePop();
            },
            child: Image.asset(
              "assets/icons/back.png",
              scale: 2,
            ),
          )
        : null,
    actions: action,
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1.0), // Chiều cao của đường kẻ
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        color: Colors.grey, // Màu sắc của đường kẻ
        height: 1.0, // Độ dày của đường kẻ
      ),
    ),
  );
}

import 'package:manager_app/export_global.dart';

PreferredSizeWidget AppBarGlobal({required Widget title}) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 140,
    title: title,
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

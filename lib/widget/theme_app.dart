import 'package:manager_app/export_global.dart';

extension CustomTextTheme on TextTheme { 
  
  TextStyle get bigDisplayLarge => const TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
  TextStyle get bigDisplayMedium => const TextStyle(fontSize: 40, fontWeight: FontWeight.w600);
  TextStyle get bigDisplaySmall => const TextStyle(fontSize: 40, fontWeight: FontWeight.normal);



  TextStyle get bigHeadlineLarge => const TextStyle(fontSize: 24, fontWeight: FontWeight.bold);
  TextStyle get bigHeadlineMedium => const TextStyle(fontSize: 24, fontWeight: FontWeight.w600);
  TextStyle get bigHeadlineSmall => const TextStyle(fontSize: 24, fontWeight: FontWeight.normal);

  TextStyle get minilabelLarge => const TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
  TextStyle get miniLabelMedium => const TextStyle(fontSize: 10, fontWeight: FontWeight.w600);
  TextStyle get miniLabelSmall => const TextStyle(fontSize: 10, fontWeight: FontWeight.normal);
  // Thêm các kiểu chữ tùy chỉnh khác tại đây
}

import 'dart:ui';

import 'package:manager_app/export_global.dart';

class Card_booking extends StatelessWidget {
  final String text; // Tham số động cho text
  final String imagePath;

  const Card_booking({
    super.key,
    required this.text, // Yêu cầu truyền text khi khởi tạo
    required this.imagePath, // Yêu cầu truyền đường dẫn ảnh khi khởi tạo
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(30),
        ),
        width: double.infinity,
        margin: const EdgeInsets.only(top: 60, left: 34, right: 34),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.contain,
              ),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  text,
                  style: const TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

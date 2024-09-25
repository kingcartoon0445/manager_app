import 'package:manager_app/export_global.dart';

class ButtonManager extends StatelessWidget {
 final String iconPath;
 final String text;
  const ButtonManager({super.key,required this.iconPath,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 8.9,
                        color: Color(0x33000000),
                        offset: Offset(
                          1,
                          2,
                        ),
                        spreadRadius: 1,
                      )
                    ],
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                       iconPath,
                        scale: 1.5,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        text,
                        style:context.textTheme.headlineLarge!.copyWith(
                            color: ColorName.colorGrey4
                        )
                      )
                    ],
                  ),
                );
             
  }
}
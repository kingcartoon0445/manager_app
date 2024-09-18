import 'package:manager_app/export_global.dart';

class TextFiledInformation extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool isSetWidth;
  final TextInputType? typeInput;
  const TextFiledInformation(
      {super.key,
      required this.labelText,
      required this.controller,
      this.typeInput,
      this.isSetWidth = false});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Container(
      height: isSetWidth?90:80,
      
      width: isSetWidth ? (width - 45) / 2 : null,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
        
        border: Border.all(color: ColorName.colorGrey4),
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: 
      TextFormField(
        controller: controller,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 20, color: ColorName.black),
            keyboardType: typeInput==null?TextInputType.text:typeInput ,
        decoration: InputDecoration(
         hintMaxLines: 1,
            labelText: labelText,
            border: InputBorder.none,
            labelStyle: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
                color: ColorName.black),
            floatingLabelStyle: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
                color: ColorName.black)),
      ),
   
    );
  }
}

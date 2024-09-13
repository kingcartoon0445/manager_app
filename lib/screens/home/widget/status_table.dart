import 'package:flutter/material.dart';
import 'package:manager_app/enum/status_table.dart';
import 'package:manager_app/gen/colors.gen.dart';

class StatusTable extends StatelessWidget {
  const StatusTable({super.key, required this.status});
  final StatusTableEnum status;
Color switchColor(){
  if (status == StatusTableEnum.busy) {
    return ColorName.colorBusy;
  }
  if(status == StatusTableEnum.booked){
    return ColorName.colorFree;
  }
  else{
   return Colors.transparent;
  }
}
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      decoration: BoxDecoration(
        color: switchColor(),
        shape: BoxShape.circle,
      ),
    );
  }
}

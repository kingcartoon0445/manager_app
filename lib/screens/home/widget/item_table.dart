// ignore_for_file: must_be_immutable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:manager_app/enum/status_table.dart';
import 'package:manager_app/export_global.dart';
import 'package:manager_app/gen/colors.gen.dart';
import 'package:manager_app/routes/app_route.dart'; 
import 'status_table.dart';

class ItemTable extends StatelessWidget {
  const ItemTable({super.key, required this.numTable, required this.status});
  final int numTable;
  final StatusTableEnum status;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
         context.router.push(  InfomationCustomerRoute());
      },
      child: Container(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SvgPicture.asset(
              "assets/icons/table.svg",
              height: 75,
            ),
            StatusTable(
              status: status,
            ),
            Text(
              numTable.toString(),
              style: context.textTheme.labelLarge!.copyWith(color:ColorName.white)
            ),
          ],
        ),
      ),
    );

  }
}

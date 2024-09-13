import 'package:flutter/material.dart';
import 'package:manager_app/enum/status_table.dart';

import 'item_table.dart';

int getNumTable(int indexPage,int index){
 return indexPage*9+index+1;
}

class TablesWidget extends StatelessWidget {
  final int quantityTable;
  final int indexPage;
  const TablesWidget({super.key, required this.quantityTable,required this.indexPage});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1,
      ),
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      
      children: [
        for (int i = 0; i < quantityTable; i++)
            ItemTable(
            numTable: getNumTable(indexPage,i),
            status: StatusTableEnum.booked,
          )
      ],
    );
  }
}

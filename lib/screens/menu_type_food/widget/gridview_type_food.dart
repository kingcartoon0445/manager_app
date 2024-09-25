import 'package:flutter/material.dart';
import 'package:manager_app/enum/status_table.dart';
import 'package:manager_app/screens/home/widget/item_table.dart';

import 'item_food_type.dart';
 

int getNumTable(int indexPage,int index){
 return indexPage*6+index;
}

class GridViewTypeFood extends StatelessWidget {
  final int quantityTable;
  final int indexPage;
  const GridViewTypeFood({super.key, required this.quantityTable,required this.indexPage});

  @override
  Widget build(BuildContext context) {
    
       int quantityPage = int.parse((quantityTable / 9).round().toString());
    return GridView(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.2,
      ),
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      
      children: [
        for (int i = 0; i < quantityTable; i++) //Text(getNumTable(indexPage,i).toString())
            ItemFoodType(
        index:   getNumTable(indexPage,i)
          )
      ],
    );
  }
}

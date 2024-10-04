import '../../../export_global.dart';

class ItemFoodType extends StatelessWidget {
  final int index;
  const ItemFoodType({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: Assets.images.fish.image()),
        Center(
            child: Text(
          globalData.categories[index].name,
          style: context.textTheme.titleLarge,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ))
      ],
    );
  }
}

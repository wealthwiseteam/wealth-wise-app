part of '../add_goal_page.dart';

class IconItem extends StatelessWidget {
  final CategoryIcon item;
  const IconItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PublicText(txt: item.name),
          Icon(
            item.icon,
            color: AppColors.mintGreen,
          ),
        ],
      ),
    );
  }
}

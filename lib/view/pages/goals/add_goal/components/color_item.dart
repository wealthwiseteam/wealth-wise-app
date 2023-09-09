part of '../add_goal_page.dart';

class ColorItem extends StatelessWidget {
  final CategoryColor color;
  const ColorItem({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PublicText(txt: color.name),
          Container(
            height: 6.h,
            width: 60.w,
            decoration: BoxDecoration(
              color: color.color,
              borderRadius: BorderRadius.circular(32),
            ),
          ),
        ],
      ),
    );
  }
}

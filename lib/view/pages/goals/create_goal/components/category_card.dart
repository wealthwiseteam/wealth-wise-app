part of '../create_goal_page.dart';

class CategoryCard extends StatelessWidget {
  final CategoryInfo category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          category.icon,
          width: 80.w,
          height: 80.w,
        ),
        16.ph,
        PublicText(
          txt: category.name,
        )
      ],
    );
  }
}
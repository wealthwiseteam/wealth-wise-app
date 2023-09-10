
part of '../layouts_page.dart';

class BarItemIcon extends StatelessWidget {
  final int index;
  final int selectedIndex;
  final String icon;
  const BarItemIcon({
    super.key,
    required this.index,
    required this.selectedIndex,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: SvgPicture.asset(
        icon,
        // color is deprecated, need to use the new one
        color: selectedIndex == index ? AppColors.mintGreen : AppColors.grey,
        height: 28.w,
        width: 28.w,
      ),
    );
  }
}
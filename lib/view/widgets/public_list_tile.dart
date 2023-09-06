import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

import '../../resources/styles/app_colors.dart';

class PublicListTile extends StatelessWidget {
  final String title;
  final String icon;
  final void Function()? onTap;
  const PublicListTile({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: onTap,
      leading: SvgPicture.asset(
        icon,
        width: 22.w,
        height: 22.w,
      ),
      title: PublicText(
        txt: title,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios_outlined,
        color: AppColors.mintGreen,
        size: 22.w,
      ),
    );
  }
}
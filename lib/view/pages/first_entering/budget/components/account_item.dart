

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



import '../../../../../data/models/budget/category_period copy.dart';
import '../../../../widgets/public_text.dart';

class AccountItem extends StatelessWidget {
final CategoryAccount item;
  const AccountItem({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PublicText(txt: item.name),
         
        ],
      ),
    );
  }
}
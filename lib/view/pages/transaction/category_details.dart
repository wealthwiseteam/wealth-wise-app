import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/public_divider.dart';
import '../../widgets/public_text.dart';

class CategoryDetails extends StatelessWidget {

  String title;
  String? value;
  IconData? icon;

  CategoryDetails({super.key,
    required this.title,
    this.value,
    this.icon
   });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      child: Column(
        children: [
          Row(
            children: [
              PublicText(txt: title,size: 17,color: Colors.grey,),
              const Spacer(),
              if(value == null)
                Icon(icon),
              if(value != null)
              PublicText(txt: value!,size: 17,fw: FontWeight.w500,)
            ],
          ),
          const Spacer(),
          const PublicDivider(
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/constants/app_constants.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/pages/first_entering/budget/components/category_item.dart';
import 'package:wealth_wise/view/pages/first_entering/budget/components/period_item.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';
import 'package:wealth_wise/view/widgets/public_text_form_field.dart';

class FirstModel extends StatelessWidget {
  final TextEditingController cont;
  final String title;
  const FirstModel({
    super.key,
    required this.cont,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PublicText(
          txt: title,
          color: Colors.grey,
          size: 17.h,
        ),
        SizedBox(
          height: 10.h,
        ),
        PublicTextFormField(
          controller: cont,
          validator: (value) {
            if (value!.isEmpty) {
              return 'This Field is required';
            }
          },
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: AppColors.mintGreen,
            ),
          ),
        )
      ],
    );
  }
}

class SecondModel extends StatelessWidget {
  final String title;
  const SecondModel({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PublicText(
          txt: title,
          color: Colors.grey,
          size: 17.h,
        ),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          width: (MediaQuery.sizeOf(context).width - 32.w * 2) / 2,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.mintGreen,
                width: 2.0.w,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: DropdownButton(
              isExpanded: true,
              underline: const SizedBox(),
              menuMaxHeight: 400.h,
              items: AppConstants.periodCollection.map((item) {
                return DropdownMenuItem(
                  value: item.name,
                  child: PeridItem(item: item),
                );
              }).toList(),
              onChanged: (value) {},
            ),
          ),
        ),
      ],
    );
  }
}

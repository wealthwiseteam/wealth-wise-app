import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/data/models/goals/category_color_model.dart';
import 'package:wealth_wise/resources/constants/app_constants.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';

import '../../../../data/models/goals/category_icon_model.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

part 'components/color_item.dart';
part 'components/icon_item.dart';

class AddGoalPage extends StatefulWidget {
  const AddGoalPage({super.key});

  @override
  State<AddGoalPage> createState() => _AddGoalPageState();
}

class _AddGoalPageState extends State<AddGoalPage> {
  late final TextEditingController nameController;
  late final TextEditingController targetController;
  late final TextEditingController savedController;
  late final TextEditingController noteController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    targetController = TextEditingController();
    savedController = TextEditingController();
    noteController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    targetController.dispose();
    savedController.dispose();
    noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).addGoal,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: AppColors.mintGreen,
            onPressed: () async {
              // for closing keyboard before pop the page to avoid errors
              FocusScope.of(context).unfocus();
              await Future.delayed(const Duration(milliseconds: 10));
              if (!mounted) return;
              Navigator.pop(context);
            },
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
          child: Builder(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Goal Name
                  PublicText(
                    txt: S.of(context).yourGoalName,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  PublicTextFormField(
                    controller: nameController,
                    validator: (name) {
                      return null;
                    },
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mintGreen,
                      ),
                    ),
                  ),
                  20.ph,

                  /// Desired Date
                  PublicText(
                    txt: S.of(context).desiredDate,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.mintGreen,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PublicText(
                          txt: "Example: Aug 12, 2024",
                          color: AppColors.grey,
                        ),
                        Icon(
                          Icons.calendar_month_outlined,
                          color: AppColors.mintGreen,
                        ),
                      ],
                    ),
                  ),
                  20.ph,

                  /// Target Amount
                  PublicText(
                    txt: S.of(context).targetAmount,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                    width: (screenSize.width - 32.w * 2) / 2,
                    child: PublicTextFormField(
                      hint: "Example: 250",
                      controller: targetController,
                      keyboardtype: TextInputType.number,
                      validator: (number) {
                        return null;
                      },
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.mintGreen,
                        ),
                      ),
                    ),
                  ),
                  20.ph,

                  /// Saved Already
                  PublicText(
                    txt: S.of(context).savedAlready,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                    width: (screenSize.width - 32.w * 2) / 2,
                    child: PublicTextFormField(
                      hint: "Example: 50",
                      controller: savedController,
                      keyboardtype: TextInputType.number,
                      validator: (number) {
                        return null;
                      },
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.mintGreen,
                        ),
                      ),
                    ),
                  ),
                  20.ph,

                  /// Goal Icon & Color
                  Row(
                    children: [
                      /// Goal Color
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PublicText(
                              txt: S.of(context).goalColor,
                              color: AppColors.subtitleGrey,
                            ),
                            10.ph,
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.mintGreen,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: const SizedBox(),
                                menuMaxHeight: 400.h,
                                value: Colors.blue,
                                items:
                                    AppConstants.colorsCollection.map((color) {
                                  return DropdownMenuItem(
                                    value: color.color,
                                    child: ColorItem(color: color),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                      16.pw,

                      /// Goal Icon
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PublicText(
                              txt: S.of(context).chooseIcon,
                              color: AppColors.subtitleGrey,
                            ),
                            10.ph,
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.mintGreen,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: DropdownButton(
                                isExpanded: true,
                                underline: const SizedBox(),
                                menuMaxHeight: 400.h,
                                value: Icons.house,
                                items: AppConstants.iconsCollection.map((item) {
                                  return DropdownMenuItem(
                                    value: item.icon,
                                    child: IconItem(item: item),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  20.ph,

                  /// Goal Name
                  PublicText(
                    txt: S.of(context).notes,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  PublicTextFormField(
                    hint: "Note...",
                    controller: noteController,
                    validator: (note) {
                      return null;
                    },
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AppColors.mintGreen,
                      ),
                    ),
                  ),
                  20.ph,

                  PublicButton(
                    title: S.of(context).createGoal,
                    width: double.infinity,
                    onPressed: () {},
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

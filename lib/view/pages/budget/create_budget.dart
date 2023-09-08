import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:wealth_wise/resources/constants/app_constants.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../widgets/public_text.dart';
import '../../widgets/public_text_form_field.dart';
import '../goals/add_goal/add_goal_page.dart';

class AddBudgetPage extends StatefulWidget {
  const AddBudgetPage({super.key});

  @override
  State<AddBudgetPage> createState() => _AddBudgetPageState();
}

class _AddBudgetPageState extends State<AddBudgetPage> {
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
                      PublicText(
                    txt: S.of(context).expenses,
                    size: 20,
                    ff: "Inter",
                    fw: FontWeight.w400,
                   
                  ),
                  20.ph,
                  /// Choose Category
                  PublicText(
                    txt: S.of(context).chooseCategory,
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
                  20.ph,

                  /// Goal Budget
                
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

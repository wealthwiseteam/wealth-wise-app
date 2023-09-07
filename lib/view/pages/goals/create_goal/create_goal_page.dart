import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wealth_wise/data/models/goals/goal_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';

import '../../../../data/models/settings/category_info_model.dart';
import '../../../../resources/constants/app_assets.dart';
import '../../../../resources/constants/app_constants.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_text.dart';
import '../../../widgets/public_text_form_field.dart';

part 'components/category_card.dart';

class CreateGoalPage extends StatefulWidget {
  const CreateGoalPage({super.key});

  @override
  State<CreateGoalPage> createState() => _CreateGoalPageState();
}

class _CreateGoalPageState extends State<CreateGoalPage> {
  late final TextEditingController nameController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).goals,
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
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 40.h),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.center,
                child: PublicText(
                  txt: S.of(context).whatSavingFor,
                  fw: FontWeight.w500,
                  size: 20.sp,
                ),
              ),
              32.ph,
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
              24.ph,
              PublicButton(
                title: S.of(context).createGoal,
                onPressed: () =>
                    Navigator.pushNamed(context, AppRoutes.addGoal),
                width: double.infinity,
              ),
              40.ph,
              Align(
                alignment: Alignment.center,
                child: PublicText(
                  txt: S.of(context).thingsSaveFor,
                  fw: FontWeight.w500,
                  size: 20.sp,
                ),
              ),
              24.ph,
              GridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: AppConstants.categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 10 / 9,
                ),
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, AppRoutes.addGoal),
                    child: CategoryCard(
                      category: AppConstants.categories[index],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

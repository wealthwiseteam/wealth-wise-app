import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wealth_wise/data/models/settings/category_info_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';
import 'package:wealth_wise/view/widgets/public_switch_list_tile.dart';
import 'package:wealth_wise/view/widgets/public_text_form_field.dart';

import '../../../../resources/constants/app_constants.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_text.dart';
import '../../goals/add_goal/add_goal_page.dart';

class CreateEditCategoryPage extends StatefulWidget {
  final CategoryInfo? categoryInfo;
  final bool isCreate;
  const CreateEditCategoryPage({
    super.key,
    this.categoryInfo,
    this.isCreate = false,
  });

  @override
  State<CreateEditCategoryPage> createState() => _CreateEditCategoryPageState();
}

class _CreateEditCategoryPageState extends State<CreateEditCategoryPage> {
  late final TextEditingController nameController;
  late final TextEditingController noteController;

  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    noteController = TextEditingController();
  }

  @override
  void dispose() {
    nameController.dispose();
    noteController.dispose();
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
            txt: widget.isCreate
                ? S.of(context).createCategory
                : S.of(context).editCategory,
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 56.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                widget.isCreate
                    ? const SizedBox()
                    : Hero(
                        tag: widget.categoryInfo!.name,
                        child: Align(
                          alignment: Alignment.center,
                          child: SvgPicture.asset(
                            widget.categoryInfo!.icon,
                            width: 80.w,
                            height: 80.w,
                          ),
                        ),
                      ),
                24.ph,
                PublicText(
                  txt: S.of(context).name,
                ),
                10.ph,
                PublicTextFormField(
                  hint: widget.categoryInfo!.name,
                  controller: nameController,
                  showSuffixIcon: true,
                  suffixIcon: Icons.edit,
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
                              items: AppConstants.colorsCollection.map((color) {
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

                /// Switch Button
                PublicSwitchListTile(
                  title: S.of(context).show,
                  swithcer: Switchers.show,
                ),
                80.ph,

                /// Save Button
                PublicButton(
                  title: widget.isCreate
                      ? S.of(context).create
                      : S.of(context).save,
                  width: double.infinity,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

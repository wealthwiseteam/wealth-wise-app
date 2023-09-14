import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wealth_wise/data/models/settings/category_info_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/view/widgets/public_switch_list_tile.dart';
import 'package:wealth_wise/view/widgets/public_text_form_field.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_text.dart';

class EditCategoryPage extends StatefulWidget {
  final CategoryInfo categoryInfo;
  const EditCategoryPage({super.key, required this.categoryInfo});

  @override
  State<EditCategoryPage> createState() => _EditCategoryPageState();
}

class _EditCategoryPageState extends State<EditCategoryPage> {
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
            txt: S.of(context).editCategory,
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
              children: [
                Hero(
                  tag: widget.categoryInfo.name,
                  child: SvgPicture.asset(
                    widget.categoryInfo.icon,
                    width: 80.w,
                    height: 80.w,
                  ),
                ),
                24.ph,
                Align(
                  alignment: Alignment.centerLeft,
                  child: PublicText(
                    txt: S.of(context).name,
                  ),
                ),
                10.ph,
                PublicTextFormField(
                  hint: widget.categoryInfo.name,
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
                PublicSwitchListTile(
                  title: S.of(context).show,
                  swithcer: Switchers.show,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:wealth_wise/data/models/goals/goal_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';
import 'package:wealth_wise/view/widgets/public_text_form_field.dart';

class GoalDetailsPage extends StatelessWidget {
  final Goal goal;
  const GoalDetailsPage({
    super.key,
    required this.goal,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).goalProgress,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: AppColors.mintGreen,
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
            child: Column(
              children: [
                /// Goal Info
                Row(
                  children: [
                    SvgPicture.asset(
                      goal.icon,
                      width: 60.w,
                      height: 60.w,
                    ),
                    10.pw,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PublicText(
                          txt: goal.name,
                          size: 18.sp,
                        ),
                        4.ph,
                        PublicText(
                          txt: goal.desiredDate.format1,
                          color: AppColors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                80.ph,

                /// Goal Progress
                CircularPercentIndicator(
                  radius: 140.h,
                  percent: 0.2,
                  backgroundColor: AppColors.lightGrey,
                  progressColor: AppColors.mintGreen,
                  center: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PublicText(
                          txt:
                              "${(goal.savedAmount / goal.targetAmount * 100).round()} %",
                          color: AppColors.mintGreen,
                          size: 22.sp,
                        ),
                        8.ph,
                        PublicText(
                          txt:
                              "${goal.savedAmount.orAbout()} / ${goal.targetAmount.orAbout()}",
                          color: AppColors.grey,
                        ),
                        8.ph,
                        PublicText(
                          txt: S.of(context).egp,
                          color: AppColors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                40.ph,

                /// Text Info
                PublicText(
                  txt: S.of(context).minimumWeekGoal,
                  color: AppColors.grey,
                ),
                10.ph,
                PublicText(
                  txt: "${S.of(context).egp} 50",
                  fw: FontWeight.bold,
                  size: 18.sp,
                ),
                120.ph,
                PublicButton(
                  title: S.of(context).addSavedAmount,
                  width: double.infinity,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return const SaveAmountAlertDialog();
                      },
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SaveAmountAlertDialog extends StatefulWidget {
  const SaveAmountAlertDialog({
    super.key,
  });

  @override
  State<SaveAmountAlertDialog> createState() => _SaveAmountAlertDialogState();
}

class _SaveAmountAlertDialogState extends State<SaveAmountAlertDialog> {
  late final TextEditingController amountController;
  @override
  void initState() {
    super.initState();
    amountController = TextEditingController();
  }

  @override
  void dispose() {
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      title: const PublicText(txt: "Enter Your Amount"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PublicTextFormField(
            hint: "0.0",
            controller: amountController,
            keyboardtype: TextInputType.number,
            validator: null,
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.mintGreen, width: 2),
            ),
          ),
          20.ph,
          PublicButton(
            title: S.of(context).add,
            width: double.infinity,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

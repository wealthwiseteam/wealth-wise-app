import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:wealth_wise/data/models/goals/goal_model.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/router/app_router.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';
import 'package:wealth_wise/view/widgets/public_text_form_field.dart';
import 'package:wealth_wise/view_model/goals/goals_cubit.dart';

class GoalDetailsPage extends StatelessWidget {
  final int index;
  const GoalDetailsPage({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = GoalsCubit.getInstance(context);
    final goal = cubit.myGoals[index];
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
          actions: [
            IconButton(
              icon: const Icon(Icons.edit_outlined),
              color: AppColors.mintGreen,
              onPressed: () async {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
            child: Column(
              children: [
                /// Goal Info
                Row(
                  children: [
                    CircleAvatar(
                      radius: 30.w,
                      backgroundColor: Color(int.parse(goal.color)),
                      child: Icon(
                        goal.icon.getIconData(),
                        color: AppColors.white,
                        size: 32.w,
                      ),
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
                          txt: goal.dueDate.format2,
                          color: AppColors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                80.ph,

                /// Goal Progress
                BlocBuilder<GoalsCubit, GoalsState>(
                  buildWhen: (_, current) => current is GoalState,
                  builder: (context, state) {
                    final goal = cubit.myGoals[index];
                    return CircularPercentIndicator(
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
                                  "${(goal.currentAmount / goal.targetAmount * 100).round()} %",
                              color: AppColors.mintGreen,
                              size: 22.sp,
                            ),
                            8.ph,
                            PublicText(
                              txt:
                                  "${goal.currentAmount.orAbout()} / ${goal.targetAmount.orAbout()}",
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
                    );
                  },
                ),
                40.ph,

                /// Text Info
                PublicText(
                  txt: S.of(context).minimumWeekGoal,
                  color: AppColors.grey,
                ),
                10.ph,
                BlocBuilder<GoalsCubit, GoalsState>(
                  buildWhen: (_, current) => current is GoalState,
                  builder: (context, state) {
                    final goal = cubit.myGoals[index];
                    return PublicText(
                      txt:
                          "${S.of(context).egp} ${((goal.targetAmount - goal.currentAmount) / ((goal.dueDate.difference(goal.startDate).inDays) / 7)).orAbout()}",
                      fw: FontWeight.bold,
                      size: 18.sp,
                    );
                  },
                ),
                120.ph,
                PublicButton(
                  title: S.of(context).addSavedAmount,
                  width: double.infinity,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return SaveAmountAlertDialog(index: index);
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
  final int index;
  const SaveAmountAlertDialog({
    super.key,
    required this.index,
  });

  @override
  State<SaveAmountAlertDialog> createState() => _SaveAmountAlertDialogState();
}

class _SaveAmountAlertDialogState extends State<SaveAmountAlertDialog> {
  late final TextEditingController amountController;
  late final Goal goal;
  @override
  void initState() {
    super.initState();
    amountController = TextEditingController();
    final cubit = GoalsCubit.getInstance(context);
    goal = cubit.myGoals[widget.index];
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
      surfaceTintColor: Colors.transparent,
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
              final cubit = GoalsCubit.getInstance(context);
              cubit.updateGoal(
                index: widget.index,
                id: goal.id!,
                goal: goal.copyWith(
                  currentAmount:
                      goal.currentAmount + int.parse(amountController.text),
                ),
              );
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}

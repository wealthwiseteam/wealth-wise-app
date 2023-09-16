import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../data/models/goals/goal_model.dart';
import '../../../../resources/extensions/extensions.dart';
import '../../../../resources/router/app_router.dart';
import '../../../../view_model/goals/goals_cubit.dart';
import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_divider.dart';
import '../../../widgets/public_text.dart';
part 'components/goal_list_tile.dart';

class MyGoalsPage extends StatefulWidget {
  const MyGoalsPage({super.key});

  @override
  State<MyGoalsPage> createState() => _MyGoalsPageState();
}

class _MyGoalsPageState extends State<MyGoalsPage> {
  late final GoalsCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = GoalsCubit.getInstance(context);
    cubit.getMyGoals();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).myGoals,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new_outlined),
            color: AppColors.mintGreen,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 40.h),
          child: ListView(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: PublicText(
                  txt: S.of(context).howMuchSaved,
                  color: AppColors.subtitleGrey,
                  size: 20.sp,
                ),
              ),
              40.ph,
              BlocBuilder<GoalsCubit, GoalsState>(
                buildWhen: (_, current) => current is MyGoalsState,
                builder: (context, state) {
                  if (state is MyGoalsLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is MyGoalsSuccessState &&
                      cubit.myGoals.isEmpty) {
                    return const PublicText(
                        txt: "You don't have goals yet, Create your own goals");
                  } else if (state is MyGoalsErrorState) {
                    return const PublicText(txt: "There is something Wrong");
                  } else {
                    return ListView.separated(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      itemCount: cubit.myGoals.length,
                      itemBuilder: (_, index) {
                        return GoalListTile(index: index);
                      },
                      separatorBuilder: (_, __) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.h),
                          child: const PublicDividerInfinity(),
                        );
                      },
                    );
                  }
                },
              ),
              32.ph,
              InkWell(
                onTap: () => Navigator.pushNamed(context, AppRoutes.createGoal),
                child: PublicText(
                  txt: S.of(context).createGoal,
                  color: AppColors.mintGreen,
                  fw: FontWeight.w600,
                  size: 20.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

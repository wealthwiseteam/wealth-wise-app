part of '../my_goals_page.dart';

class GoalListTile extends StatelessWidget {
  final int index;
  const GoalListTile({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final cubit = GoalsCubit.getInstance(context);
    return BlocBuilder<GoalsCubit, GoalsState>(
      buildWhen: (previous, current) => current is GoalState,
      builder: (context, state) {
        final goal = cubit.myGoals[index];
        return ListTile(
          contentPadding: EdgeInsets.zero,
          onTap: () => Navigator.pushNamed(
            context,
            AppRoutes.goalProgress,
            arguments: index,
          ),
          leading: CircleAvatar(
            radius: 30.w,
            backgroundColor: Color(int.parse(goal.color)),
            child: Icon(
              goal.icon.getIconData(),
              color: AppColors.white,
              size: 32.w,
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios_outlined,
            color: AppColors.mintGreen,
            size: 22.w,
          ),
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PublicText(
                txt: goal.name,
              ),
              4.ph,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PublicText(
                    txt: "${S.of(context).egp} ${goal.currentAmount}",
                    color: AppColors.subtitleGrey,
                  ),
                  PublicText(
                    txt:
                        "${(goal.currentAmount / goal.targetAmount * 100).round()} %",
                    color: AppColors.subtitleGrey,
                  ),
                ],
              ),
              8.ph,
              LinearPercentIndicator(
                padding: EdgeInsets.zero,
                width: 200.w,
                lineHeight: 3.h,
                percent: 0.2,
                backgroundColor: AppColors.lightGrey,
                progressColor: AppColors.mintGreen,
                barRadius: const Radius.circular(16),
              ),
            ],
          ),
        );
      },
    );
  }
}

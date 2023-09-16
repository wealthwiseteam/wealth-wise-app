part of '../my_goals_page.dart';

class GoalListTile extends StatelessWidget {
  final Goal goal;
  const GoalListTile({
    super.key,
    required this.goal,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      onTap: () => Navigator.pushNamed(
        context,
        AppRoutes.goalProgress,
        arguments: goal,
      ),
      leading: SvgPicture.asset(
        goal.icon,
        width: 60.w,
        height: 60.w,
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
  }
}

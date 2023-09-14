part of '../budgets_page.dart';

class BudgetItem extends StatelessWidget {
  final String name;
  final double amount;
  const BudgetItem({
    super.key,
    required this.name,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () =>
                      Navigator.pushNamed(context, AppRoutes.budgetDetials),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PublicText(
                        txt: name,
                      ),
                      const Spacer(),
                      PublicText(
                        txt: "${S.of(context).egp} ${amount.orAbout()}",
                      ),
                    ],
                  ),
                ),
              ),
              10.pw,
              IconButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  AppRoutes.createEditBudget,
                  arguments: false,
                ),
                icon: Icon(
                  Icons.edit_outlined,
                  color: AppColors.mintGreen,
                  size: 20.w,
                ),
              ),
            ],
          ),
          PublicDivider(width: 230.w),
        ],
      ),
    );
  }
}

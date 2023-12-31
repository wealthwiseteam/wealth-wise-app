import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/widgets/public_divider.dart';
import 'package:wealth_wise/view/widgets/public_switch_list_tile.dart';

import '../../../../resources/localization/generated/l10n.dart';
import '../../../../resources/styles/app_colors.dart';
import '../../../widgets/public_text.dart';

class NotificationsSettingsPage extends StatelessWidget {
  const NotificationsSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).notificaitons,
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
          child: Column(
            children: [
              PublicSwitchListTile(
                title: S.of(context).budgets,
                swithcer: Switchers.budgets,
              ),
              const PublicDividerInfinity(),
              PublicSwitchListTile(
                title: S.of(context).reachingGoals,
                swithcer: Switchers.goals,
              ),
              const PublicDividerInfinity(),
              PublicSwitchListTile(
                title: S.of(context).securityAlerts,
                swithcer: Switchers.securityAlerts,
              ),
              const PublicDividerInfinity(),
              PublicSwitchListTile(
                title: S.of(context).appUpdates,
                swithcer: Switchers.updates,
              ),
              const PublicDividerInfinity()
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

import '../../../data/dummay_data/dummay_data.dart';
import '../../../data/models/notifications/notification_model.dart';
import '../../../resources/constants/app_assets.dart';
import '../../../resources/extensions/extensions.dart';
import '../../../resources/localization/generated/l10n.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/public_text.dart';

part 'components/notification_card.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

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
        body: ListView.builder(
          itemCount: DummayData.notifications.length,
          itemBuilder: (_, index) => NotificationCard(
            notification: DummayData.notifications[index],
          ),
        ),
      ),
    );
  }
}

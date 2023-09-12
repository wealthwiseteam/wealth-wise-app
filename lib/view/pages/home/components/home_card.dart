import 'package:flutter/material.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeCard extends StatelessWidget {
  final String imageUrl;
  final String text;
  const HomeCard({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 25.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(imageUrl),
            PublicText(
              txt: text,
            ),
          ],
        ),
      ),
    );
  }
}

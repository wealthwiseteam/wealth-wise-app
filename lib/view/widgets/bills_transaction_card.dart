import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class BillsCard extends StatelessWidget {
  String title;
  String date;
  String money;
  IconData prefixIcon;

   BillsCard({super.key,
     required this.title,
     required this.date,
     required this.money,
     required this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
      return Card(
        color: Colors.white,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                children: [
                  Icon(prefixIcon,size: 30.h,color: Colors.teal,),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  PublicText(txt: title,fw: FontWeight.w600,size: 22,),
                  PublicText(txt: date,color: Colors.grey,size: 20,),
                  PublicText(txt: '$money EGP',size: 20,),
                ],
              ),
              const Spacer(),
              Column(
                children:  [
                  Icon(Icons.warning_amber,size: 25.h,),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ),
      );
  }
}

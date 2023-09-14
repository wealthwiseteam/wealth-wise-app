import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/data/dummay_data/dummay_data.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/pages/transactions/tran_details/trans_details_page.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class AllTransPage extends StatelessWidget {
  const AllTransPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.h,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: PublicText(
          txt: 'Transactions',
          fw: FontWeight.bold,
          size: 22.sp,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              color: AppColors.mintGreen,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    PublicText(
                      txt: 'Your total expenses',
                      color: Colors.white,
                      fw: FontWeight.w500,
                      size: 18.h,
                    ),
                    PublicText(
                      txt: '0 EGP',
                      color: Colors.white,
                      fw: FontWeight.bold,
                      size: 22.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TranDetailsPage(
                          title: DummayData.transCards[index].title,
                          // iconTitle: ,
                        ),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 120.h,
                    child: DummayData.transCards[index],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
                itemCount: DummayData.transCards.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

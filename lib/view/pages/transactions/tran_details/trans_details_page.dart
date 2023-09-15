import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/data/dummay_data/dummay_data.dart';
import 'package:wealth_wise/view/widgets/public_text_form_field.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';

import '../../../widgets/public_text.dart';

class TranDetailsPage extends StatefulWidget {
  final String? title;
  const TranDetailsPage({
    super.key,
    this.title,
  });

  @override
  State<TranDetailsPage> createState() => _TranDetailsPageState();
}

class _TranDetailsPageState extends State<TranDetailsPage> {
  late final TextEditingController noteCont;

  @override
  void initState() {
    super.initState();
    noteCont = TextEditingController();
  }

  @override
  void dispose() {
    noteCont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80.h,
        title: PublicText(
          txt: 'Transactions',
          fw: FontWeight.bold,
          size: 22.sp,
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 8.0.h,
          left: 25.h,
          right: 25.h,
          bottom: 8.h,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.mintGreen,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: PublicText(
                  txt: '0 EGP',
                  color: Colors.white,
                  fw: FontWeight.bold,
                  size: 20.h,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      DummayData.transDetails[index],
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.h,
                  ),
                  itemCount: DummayData.transDetails.length,
                ),
              ),
            ),
            // SizedBox(
            //   height: 5.h,
            // ),
            const Align(
              alignment: Alignment.topLeft,
              child: PublicText(
                txt: 'Note',
                fw: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            PublicTextFormField(
              controller: noteCont,
              validator: (value) {},
              hint: 'Note',
              border: const OutlineInputBorder(),
            ),
            SizedBox(
              height: 20.h,
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              child: IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Column(
                        children: [
                          PublicText(
                            txt: 'Are you sure to delete this?',
                            fw: FontWeight.w500,
                          ),
                          PublicText(
                            txt: 'once deleted you cannot recover it',
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      actions: [
                        Row(
                          children: [
                            // const Spacer(),
                            OutlinedButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.h),
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 12.h),
                                  child: const PublicText(txt: 'Cancel'),
                                )),
                            const Spacer(),
                            OutlinedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25.h),
                                  ),
                                  backgroundColor: Colors.red),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 12.h),
                                child: const PublicText(
                                  txt: 'Delete',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            // const Spacer(),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                icon: const Icon(
                  Icons.delete_outline,
                  color: Colors.white,
                ),
              ),
            ),
            // const Spacer()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';
import 'package:wealth_wise/resources/localization/generated/l10n.dart';
import 'package:wealth_wise/resources/styles/app_colors.dart';
import 'package:wealth_wise/view/pages/bills/add_bill/components/text_field_models.dart';
import 'package:wealth_wise/view/widgets/public_button.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class AddBills extends StatefulWidget {
  const AddBills({super.key});

  @override
  State<AddBills> createState() => _AddBillsState();
}

class _AddBillsState extends State<AddBills> {
  late final TextEditingController nameCont;
  late final TextEditingController amountCont;

  @override
  void initState() {
    super.initState();
    nameCont = TextEditingController();
    amountCont = TextEditingController();
  }

  @override
  void dispose() {
    nameCont.dispose();
    amountCont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 80.h,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: PublicText(
          txt: 'Bills',
          fw: FontWeight.bold,
          size: 22.sp,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FirstModel(
                cont: nameCont,
                title: 'name',
              ),
              SizedBox(
                height: 20.h,
              ),
              FirstModel(
                cont: amountCont,
                title: 'Enter amount',
              ),
              SizedBox(
                height: 20.h,
              ),
              const SecondModel(title: 'Enter period'),
              SizedBox(
                height: 20.h,
              ),

              /// Dates
              Row(
                children: [
                  /// Start Date
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PublicText(
                          txt: S.of(context).startDate,
                          color: AppColors.subtitleGrey,
                        ),
                        10.ph,
                        InkWell(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2040),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 15.h),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.mintGreen,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PublicText(
                                  txt: "",
                                  color: AppColors.grey,
                                ),
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: AppColors.mintGreen,
                                ),
                              ],
                            ),
                          ),
                        ),
                        20.ph,
                      ],
                    ),
                  ),
                  16.pw,

                  /// Due Date
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PublicText(
                          txt: S.of(context).dueDate,
                          color: AppColors.subtitleGrey,
                        ),
                        10.ph,
                        InkWell(
                          onTap: () {
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2040),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10.w,
                              vertical: 15.h,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: AppColors.mintGreen,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PublicText(
                                  txt: "",
                                  color: AppColors.grey,
                                ),
                                Icon(
                                  Icons.calendar_month_outlined,
                                  color: AppColors.mintGreen,
                                ),
                              ],
                            ),
                          ),
                        ),
                        20.ph,
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 20.h,
              ),
              const SecondModel(title: 'Choose account'),
              SizedBox(
                height: 20.h,
              ),
              30.ph,
              PublicButton(
                title: "Add",
                width: double.infinity,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/bills/models.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class AddBills extends StatelessWidget {
   AddBills({super.key});
  var nameCont = TextEditingController();
  var amountCont = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        title: const PublicText(
          txt: 'Bills',
          fw: FontWeight.bold,
          size: 22,
        ),
        centerTitle: true,
        toolbarHeight: 100.h,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.h),
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

            SecondModel(title: 'Enter period'),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                SecondModel(title: 'Start date'),
                const Spacer(),
                SecondModel(title: 'End date'),
              ],
            ),
             SizedBox(
               height: 20.h,
             ),
            SecondModel(title: 'Choose account'),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                const Spacer(),
                OutlinedButton(
                    onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.h)
                    ),
                    backgroundColor: Colors.teal
                  ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 120.h),
                      child: PublicText(
                        txt: 'Add',
                        color: Colors.white,
                        size: 18.h,
                        fw: FontWeight.w500,
                      ),
                    ),
                ),
                const Spacer(),
              ],
            )
          ],
        ),
      ),
    );
  }
}

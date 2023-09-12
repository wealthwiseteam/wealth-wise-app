import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/pages/transaction/category_details.dart';
import 'package:wealth_wise/view/widgets/public_divider.dart';
import 'package:wealth_wise/view/widgets/public_text_form_field.dart';

import '../../widgets/public_text.dart';

class TransScreens extends StatelessWidget {

  String? title;
   TransScreens({super.key,
     this.title,
   });

   var noteCont = TextEditingController();
  List<Widget> transDetails =
  [
    CategoryDetails(
      title: 'Type',
      value: 'Expenses',
    ),
    CategoryDetails(
      title: 'Category',
      value: 'Housing & Rent',
    ),
    CategoryDetails(
      title: 'Date',
      icon: Icons.date_range_outlined,
    ),
    CategoryDetails(
      title: 'Time',
      icon: Icons.watch_later,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: 8.0.h,
          left: 25.h,
          right:25.h,
          bottom: 8.h,
        ),
        child: Column(
          children: [
            AppBar(
              leading: IconButton(
                  onPressed: ()
                  {
                    Navigator.pop(context);
                  },icon: const Icon(Icons.arrow_back)),
              title: const PublicText(txt: 'Transaction',fw: FontWeight.bold,size: 25,),
              centerTitle: true,
            ),
            SizedBox(
              height: 30.h,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                color: Colors.teal,
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PublicText(
                    txt: '0 EGP',
                    color: Colors.white,
                    fw: FontWeight.bold,
                    size: 20.h,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              child: Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) => transDetails[index],
                  separatorBuilder: (context, index) => SizedBox(
                    height: 20.h,
                  ),
                  itemCount: transDetails.length,
                ),
              ),
            ),
            // SizedBox(
            //   height: 5.h,
            // ),
            const Align(
                alignment: Alignment.topLeft,
                child: PublicText(txt: 'Note',fw: FontWeight.w500,)),
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
                  onPressed: () 
                  {
                    showDialog(
                      context: context,
                      builder: (context) =>  AlertDialog(
                        title: const Column(
                          children: [
                            PublicText(txt: 'Are you sure to delete this?',fw: FontWeight.w500,),
                            PublicText(txt: 'once deleted you cannot recover it',color: Colors.grey,),
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
                                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                                    child:const PublicText(txt: 'Cancel'),
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
                                      backgroundColor: Colors.red
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                                    child:const PublicText(txt: 'Delete',color: Colors.white,),
                                  )),
                              // const Spacer(),
                            ],
                          ),
                        ],
                    ),);
                  },
                  icon: const Icon(Icons.delete_outline,color: Colors.white,),
              ),
            ),
            // const Spacer()
          ],
        ),
      ),
    );
  }
}

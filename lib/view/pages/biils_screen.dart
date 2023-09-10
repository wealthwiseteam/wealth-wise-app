import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

import '../widgets/bills_card.dart';

class Bills extends StatelessWidget {
   Bills({super.key});
  List<Widget> billsCards = [
    BillsCard(
      prefixIcon: Icons.wifi,
      title: 'Internet',
      date: '22/1/2025',
      money: '5000',
    ),
    BillsCard(
      prefixIcon: Icons.phone,
      title: 'Telephone',
      date: '22/1/2025',
      money: '6000',
    ),
    BillsCard(
      prefixIcon: Icons.water_drop_outlined,
      title: 'Water',
      date: '22/1/2025',
      money: '9000',
    ),
    BillsCard(
      prefixIcon: Icons.power,
      title: 'Electricity',
      date: '22/1/2025',
      money: '2000',
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
              title: const PublicText(txt: 'Bills',fw: FontWeight.bold,size: 22,),
              centerTitle: true,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                color: Colors.teal,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                     children: [
                       PublicText(
                         txt: 'Your total bills',
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
            SizedBox(height: 25.h,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.separated(
                    itemBuilder: (context, index) => Container(
                      color: Colors.white,
                      width: double.infinity,
                      height: 110,
                      child: billsCards[index],
                    ),
                    separatorBuilder: (context, index) => SizedBox(height: 15.h,),
                    itemCount: billsCards.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

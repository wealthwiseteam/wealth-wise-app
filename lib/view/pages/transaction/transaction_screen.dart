import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/pages/transaction/trans_screens.dart';
import 'package:wealth_wise/view/widgets/bills_transaction_card.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class Transaction extends StatelessWidget {
   Transaction({super.key});
  List<BillsCard> transCards =
  [
    BillsCard(title: 'Food & Drinks', date: '15/2/2023', money: '3500', prefixIcon: Icons.fastfood),
    BillsCard(title: 'Housing & Rent', date: '22/2/2023', money: '5000', prefixIcon: Icons.home),
    BillsCard(title: 'Medicine', date: '6/4/2023', money: '1000', prefixIcon: Icons.medical_information_outlined),
    BillsCard(title: 'Shopping', date: '17/5/2023', money: '3000', prefixIcon: Icons.shopping_cart),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            leading: IconButton(onPressed: () {},icon: const Icon(Icons.arrow_back)),
            title: const PublicText(txt: 'Transaction',fw: FontWeight.bold,size: 25,),
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
                          builder: (context) => TransScreens(
                            title: transCards[index].title,
                            // iconTitle: ,
                          ),
                        ),
                    );
                  },
                  child: SizedBox(
                    width: double.infinity,
                    height: 110,
                    child: transCards[index],
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(height: 15.h,),
                itemCount: transCards.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

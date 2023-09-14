import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';
import 'package:wealth_wise/view_model/states.dart';
import 'package:wealth_wise/view_model/view_model.dart';
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
    BillsCubit bills = BillsCubit.getInstance(context);
    return BlocConsumer<BillsCubit, BillsStates>(
      listener: (context, state) {
        if (state is ChangeActiveToTrue) {
          log('active');
        } else {
          log('closed');
        }
      },
      builder: (context, state) {
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
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.add))
            ],
            toolbarHeight: 100.h,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          bills.activeIsTrue();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: bills.isActive == true ?
                              Colors.teal : Colors.white,
                              border: const Border(
                              bottom: BorderSide(color: Colors.teal,width: 1.5),
                              top: BorderSide(color: Colors.teal,width: 1.5),
                              left: BorderSide(color: Colors.teal,width: 1.5),
                            )
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.all(35.0.h),
                              child: PublicText(
                                txt: 'Active',
                                fw: bills.isActive == true
                                    ? FontWeight.bold
                                    : FontWeight.w500,
                                size: 20.h,
                                color: bills.isActive == true
                                    ? Colors.white
                                    : Colors.teal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          bills.activeIsFalse();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: const Border(
                                bottom: BorderSide(color: Colors.teal,width: 1.5),
                                top: BorderSide(color: Colors.teal,width: 1.5),
                                right: BorderSide(color: Colors.teal,width: 1.5),
                              ),
                            color: bills.isActive == true
                          ? Colors.white
                            : Colors.teal,
                          ),
                          child: Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.all(35.0.h),
                                child: PublicText(
                                  txt: 'Closed',
                                  fw: bills.isActive == true
                                      ? FontWeight.w500
                                      : FontWeight.bold,
                                  size: 20.h,
                                  color: bills.isActive == true
                                      ? Colors.teal
                                      : Colors.white,
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              if(bills.isActive == true)
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                          height: 100.h,
                          child: billsCards[0],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                          height: 100.h,
                          child: billsCards[1],
                      ),
                    ],
                  ),
                ),
              if(bills.isActive == false)
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                          height: 100.h,
                          child: billsCards[2],
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 100.h,
                          child: billsCards[3],
                      ),
                    ],
                  ),
                ),
            ]
          ),
        );
      },
    );
  }
}

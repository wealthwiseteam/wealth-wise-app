import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:wealth_wise/view/widgets/home_card.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class Home extends StatelessWidget {
  String userName;
   Home({super.key,
     required this.userName,
   });
   
   List<Widget> cards = 
   [
     HomeCard(imageUrl: 'images/pana.png', text: 'Transactions'),
     HomeCard(imageUrl: 'images/rafiki2.png', text: 'Goals'),
     HomeCard(imageUrl: 'images/rafiki.png', text: 'Bills'),
     HomeCard(imageUrl: 'images/rafiki1.png', text: 'Budgets'),
     HomeCard(imageUrl: 'images/pana2.png', text: 'Financial tips'),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15.0.h),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const PublicText(txt: 'Good morning,',color: Colors.grey),
                      const SizedBox(height: 5,),
                      PublicText(txt: userName,fw: FontWeight.w500),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications_none,color: HexColor('#105161'),size: 30 ,),
                  ),
                ],
              ),
              SizedBox(
                height: 35.h,
              ),
              SizedBox(
                width: double.infinity,
                  height: MediaQuery.of(context).size.height/4,
                  child: Stack(
                    children: [
                      SizedBox(
                          width: double.infinity,
                          child: Image.asset('images/Mask Group.png',fit: BoxFit.fill,)),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(flex: 1,),
                                const PublicText(txt: 'Payment Card',color: Colors.white,size: 15,fw: FontWeight.w500,),
                                const Spacer(flex: 2,),
                                // دة مش هيبقي const
                                PublicText(txt: '256544224586652',color: Colors.white,size: 20,fw: FontWeight.w500,),
                                const Spacer(flex: 3,),
                                // دة مش هيبقي const
                                PublicText(txt: 'EGP 22563',color: Colors.white,size: 25,fw: FontWeight.bold,),
                                const Spacer(flex: 1,),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              children: [
                                Image.asset('images/Group 75.png'),
                                const Spacer(),
                                const PublicText(txt: '21/23',color: Colors.white60,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Expanded(
                child: GridView.count(
                  //physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: List.generate(
                      cards.length,
                          (index) => InkWell(
                            onTap: () {},
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width/3,
                              child: cards[index],
                            ),
                          )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

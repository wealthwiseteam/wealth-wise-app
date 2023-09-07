import 'package:flutter/material.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';

class HomeCard extends StatelessWidget {
  String imageUrl;
  String text;
   HomeCard({super.key,
     required this.imageUrl,
     required this.text,
   });

  @override
  Widget build(BuildContext context) {
        return Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 25),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(imageUrl),
                PublicText(
                  txt: text,
                ),
              ],
            ),
          ),
        );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../resources/constants/app_assets.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/public_button.dart';
import 'signIn_page.dart';






class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(fit: StackFit.expand, children: [
         
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Image.asset(
              AppAssets.login,
              alignment: Alignment.center,
             
                       ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
            
                children: [
                  PublicButton(
                    title: "Sign in ",
                    backgroundColor: AppColors.mintGreen,
                    titleColor: AppColors.white,
                    width: 300.w,
                    borderRadius: 12,
                    titleSize: 16,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  PublicButton(
                    title: "Register ",
                    backgroundColor: AppColors.white,
                    titleColor: AppColors.mintGreen,
                    width: 300.w,
                                 
                    borderRadius: 12,
                    titleSize: 16,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignInPage()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

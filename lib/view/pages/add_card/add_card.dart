import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/resources/extensions/extensions.dart';

import '../../../resources/localization/generated/l10n.dart';
import '../../../resources/styles/app_colors.dart';
import '../../widgets/public_button.dart';
import '../../widgets/public_text.dart';
import '../../widgets/public_text_form_field.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});



  
  @override
  State<AddCardPage> createState() => _AddCardPageState();
  
 
}

class _AddCardPageState extends State<AddCardPage> {

 late final TextEditingController cardNameController;
  late final TextEditingController cardNumberController;
  late final TextEditingController expirationDateController;
  late final TextEditingController ccvController;
  void initState() {
    super.initState();
  cardNameController = TextEditingController();
 cardNumberController = TextEditingController();
   expirationDateController = TextEditingController();
   ccvController = TextEditingController();
  }

  @override
  void dispose() {
   cardNameController.dispose();
     cardNumberController.dispose();
         expirationDateController.dispose();
        ccvController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
 final screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 80.h,
          title: PublicText(
            txt: S.of(context).addCard,
            fw: FontWeight.bold,
            size: 22.sp,
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_outlined),
            onPressed: () async{
                // for closing keyboard before pop the page to avoid errors
              FocusScope.of(context).unfocus();
              await Future.delayed(const Duration(milliseconds: 10));
              if (!mounted) return;
              Navigator.pop(context);
            }
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 20.h),
          child: Builder(builder: (context) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// Card holder name
                  PublicText(
                    txt: S.of(context).cardHolderName,
                    size: 16,
                    ff: "Inter",
                    fw:   FontWeight.w400,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  PublicTextFormField(
                    controller: cardNameController,
                    validator: (cardNameControlle) {
                      return null;
                    },
                    border:  OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.mintGreen,
                        width: 2.0,
                      ),
                       borderRadius: BorderRadius.circular(5.0)
                    ),
                  ),
                  20.ph,
                    /// Card number
                  PublicText(
                    txt: S.of(context).cardNumber,
                    size: 16,
                    ff: "Inter",
                    fw:   FontWeight.w400,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  PublicTextFormField(
                    controller:cardNumberController,
                    validator: (cardNumberController) {
                      return null;
                    },
                    border:  OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.mintGreen,
                        width: 2.0,
                      ),
                       borderRadius: BorderRadius.circular(5.0)
                    ),
                  ),
                  20.ph,
       /// Expiration date
                  PublicText(
                    txt: S.of(context).expirationDate,
                    size: 16,
                    ff: "Inter",
                    fw:   FontWeight.w400,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                        width: (screenSize.width - 32.w * 2) / 2,
                    child: PublicTextFormField(
                      controller:  expirationDateController,
                      validator: ( expirationDateController) {
                        return null;
                      },
                      border:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.mintGreen,
                          width: 2.0.w,
                        ),
                         borderRadius: BorderRadius.circular(5.0)
                      ),
                    ),
                  ),
                  20.ph,
    
            /// CCV - 3 digit
                  PublicText(
                    txt: S.of(context).cardCCV,
                    size: 16,
                    ff: "Inter",
                    fw:   FontWeight.w400,
                    color: AppColors.subtitleGrey,
                  ),
                  10.ph,
                  SizedBox(
                        width: (screenSize.width - 32.w * 2) / 2,
                    child: PublicTextFormField(
                      controller: ccvController,
                      validator: (ccvController) {
                        return null;
                      },
                      border:  OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppColors.mintGreen,
                          width: 2.0.w,
                        ),
                         borderRadius: BorderRadius.circular(5.0)
                      ),
                    ),
                  ),
                  60.ph,
     PublicButton(
                    title: S.of(context).createCard,
                    width: double.infinity,
                    onPressed: () {},
                  )
                ],
              ),
              
            );
          }),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wealth_wise/view/widgets/public_text.dart';
import 'package:wealth_wise/view/widgets/public_text_form_field.dart';

class FirstModel extends StatelessWidget {

  TextEditingController cont;
  String title;
  FirstModel({
    required this.cont,
    required this.title,
});

  @override
  Widget build(BuildContext context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PublicText(txt: title,color: Colors.grey,size: 17.h,),
            SizedBox(height: 10.h,),
            PublicTextFormField(
              controller: cont,
              validator: (value) {
                if(value!.isEmpty)
                  {
                    return 'This Field is required';
                  }
              },
              border: const OutlineInputBorder(),
            )
          ],
        );
  }
}

class SecondModel extends StatelessWidget {
  String title;
   SecondModel({super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
        [
          PublicText(txt: title,color: Colors.grey,size: 17.h,),
          SizedBox(height: 10.h,),
          const DropdownMenu(
            dropdownMenuEntries: [
              DropdownMenuEntry(label: 'model1',value: PublicText(txt: '1'),),
              DropdownMenuEntry(label: 'model2',value: PublicText(txt: '2'),),
            ],
          ),
        ],
      );
  }
}


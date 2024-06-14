import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view/widgets/custom_check_icon.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view/widgets/custom_container.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view/widgets/custom_dashed_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 90,left: 20,right: 20,),
      child: Stack(
        clipBehavior: Clip.none,
        children: const [
          CustomContainer(),
          Positioned(
            bottom: 220,
            left: 25,right: 25,
            child: CustomDashedLine(),
          ),
          Positioned(
            left: -20,
            bottom:200,
            child:
        CircleAvatar(
          backgroundColor: Colors.white,
        )
        ),
         Positioned(
              right: -20,
              bottom:200,
              child:
              CircleAvatar(
                backgroundColor: Colors.white,
              )
          ),
           Positioned(
             top: -40,
             left: 0,right: 0,
             child: CustomCheckIcon(),
           )
        ]
      ),
    );
  }
}







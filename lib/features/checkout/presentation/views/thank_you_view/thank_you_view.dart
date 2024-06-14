import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_appbar.dart';
import 'package:payment/features/checkout/presentation/views/thank_you_view/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: ''),
      body:Transform.translate(
        offset: Offset(0,-100),
        child: const ThankYouViewBody(

        ),
      ),
    );
  }
}

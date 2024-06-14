import 'package:flutter/material.dart';
import 'package:payment/core/widgets/custom_appbar.dart';
import 'package:payment/features/checkout/presentation/views/payment_details_view/payment_details_body_view.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Payment Details',onTap: (){
        Navigator.pop(context);
      }),
      body:  PaymentDetailsBodyView(),
    );
  }
}

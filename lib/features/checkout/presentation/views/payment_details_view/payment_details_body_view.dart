import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/payment_details_view/widgets/custom_credit_card.dart';
import 'package:payment/features/checkout/presentation/views/payment_details_view/widgets/payment_methods_listview.dart';

class PaymentDetailsBodyView extends StatefulWidget {
   PaymentDetailsBodyView({Key? key}) : super(key: key);

  @override
  State<PaymentDetailsBodyView> createState() => _PaymentDetailsBodyViewState();
}

class _PaymentDetailsBodyViewState extends State<PaymentDetailsBodyView> {
  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            PaymentMethodsListview(),
            CustomCreditCard(formKey: formKey,
              autovalidateMode: autovalidateMode,
            ),
          ],
        ),
      ),
    );

  }
}





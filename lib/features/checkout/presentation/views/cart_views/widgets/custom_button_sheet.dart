import 'package:flutter/material.dart';

import '../../../../../../core/widgets/custom_button.dart';
import '../../payment_details_view/widgets/payment_methods_listview.dart';

class CustomButtonSheet extends StatelessWidget {
  const CustomButtonSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethodsListview(),
          const SizedBox(height: 20),
          CustomButton(text: 'Continue'),
        ],

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key, required this.title, required this.value}) : super(key: key);
  final String title,value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,style: Styles.style18,
        ),
        const Spacer(),
        Text(
         value,style: Styles.style18,
        ),

      ],
    );
  }
}

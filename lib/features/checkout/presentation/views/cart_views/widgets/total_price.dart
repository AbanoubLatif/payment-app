import 'package:flutter/material.dart';

import '../../../../../../core/utils/styles.dart';


class TotalPrice extends StatelessWidget {
  const TotalPrice({Key? key, required this.title, required this.value}) : super(key: key);
  final String title,value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,style: Styles.style24,
        ),
        const Spacer(),
        Text(
          value,style: Styles.style24,
        ),

      ],
    );
  }
}
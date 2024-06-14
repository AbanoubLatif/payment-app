import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  CustomButton({Key? key, required this.text,this.onTap}) : super(key: key);
final String text;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          boxShadow:const [
            BoxShadow(
              color:Color(0xff34A853),

            )
          ],

        ),
        height: 80,width: double.infinity,
        child: Center(
          child: Text(
              text,
              style:Styles.style22,
          ),
        ),
      ),
    );
  }
}

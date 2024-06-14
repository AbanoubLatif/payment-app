import 'package:flutter/material.dart';

class PaymentMethodItems extends StatelessWidget {
  const PaymentMethodItems({Key? key, required this.isActive, required this.image}) : super(key: key);
final bool isActive;
final String image;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 60,width:90,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              side: BorderSide(color: isActive?const Color(0xff34A853):Colors.grey,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(15)
          ),
          shadows:  [ BoxShadow(
            color: isActive?const Color(0xff34A853):Colors.grey,
            blurRadius:isActive? 4:0,
          ),
          ]
      ),

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(child: Image.asset(image,
        height: 50,
          fit: BoxFit.scaleDown,
        ),
        ),
      ),
    );
  }
}

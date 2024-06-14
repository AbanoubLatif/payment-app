import 'package:flutter/material.dart';
import 'package:payment/core/utils/styles.dart';
import 'package:payment/features/checkout/presentation/views/cart_views/widgets/cart_item.dart';
import 'package:payment/features/checkout/presentation/views/cart_views/widgets/total_price.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          color: const Color(0xffEDEDED),
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          ) ),
      child: Padding(
        padding: const EdgeInsets.only(top: 70,left: 20,right: 20),
        child: Column(
          children: [
            Text('Thank You!',
            style: Styles.style25,
            ),
            Text('Your transaction was successful',
              style: Styles.style18,
            ),
            const SizedBox(
              height: 20,
            ),
            const CartItem(title:'Date', value:'01/24/2023'),
            const SizedBox(
              height: 4,
            ),
            const CartItem(title:'Time', value:'10:15 AM'),
            const SizedBox(
              height: 4,
            ),
            const CartItem(title:'To', value:'Sam Louis'),
            const Divider(
              height: 40,thickness: 2,color: Color(0xffC7C7C7),
            ),
            const TotalPrice(title: 'Total', value:r'$50.97'),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: ShapeDecoration(
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ) ,
                  color:Colors.white
                ),
                height: 80,width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset('asset/images/logo.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15,left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Credit Card',
                            style: Styles.style18,
                          ),
                          Text('Mastercard **78',
                            style: Styles.style18,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Container(
                height: 70,width: 150,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1.5,color: Color(0xff34A853)),
                    borderRadius: BorderRadius.circular(16)
                  )
                ),
                child:Center(
                  child: Text('Paid',
                    style: Styles.style25.copyWith(
                      color: const Color(0xff34A853),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
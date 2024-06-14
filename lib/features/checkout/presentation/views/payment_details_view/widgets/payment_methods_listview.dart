import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/payment_details_view/widgets/payment_methods.dart';

class PaymentMethodsListview extends StatefulWidget {
  PaymentMethodsListview({Key? key}) : super(key: key);

  @override
  State<PaymentMethodsListview> createState() => _PaymentMethodsListviewState();
}

class _PaymentMethodsListviewState extends State<PaymentMethodsListview> {
  final List<String> PaymentMethodList= [
    'asset/images/SVGRepo_iconCarrier.png',
    'asset/images/Group.png',
    'asset/images/SVGRepo_iconarrier.png'
  ];
  int activeIndex=0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: PaymentMethodList.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: (){
                  activeIndex=index;
                  setState(() {
                  });
                },
                child: PaymentMethodItems(
                    isActive: activeIndex==index,
                    image:PaymentMethodList[index]
                ),
              ),
            );
          }),
    );

  }
}

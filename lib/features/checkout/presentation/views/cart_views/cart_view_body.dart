import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/views/cart_views/widgets/cart_item.dart';
import 'package:payment/core/widgets/custom_button.dart';
import 'package:payment/features/checkout/presentation/views/cart_views/widgets/custom_button_sheet.dart';
import 'package:payment/features/checkout/presentation/views/cart_views/widgets/total_price.dart';
import 'package:payment/features/checkout/presentation/views/payment_details_view/payment_details_view.dart';
import 'package:payment/features/checkout/presentation/views/payment_details_view/widgets/payment_methods_listview.dart';



class CartViewBody extends StatelessWidget {
  const CartViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(child: Image.asset('asset/images/basket.png',height: 300,)),
          const SizedBox(
            height: 18,
          ),
          const CartItem(title: 'Order Subtotal', value: r'$42.97',),
          const CartItem(title: 'Discount', value: r'$0',),
          const CartItem(title: 'Shipping', value: r'$8',),
          const Divider(
            height: 40,thickness: 2,color: Color(0xffC7C7C7),
          ),
          const TotalPrice(title: 'Total', value: r'$50.97'),
          const SizedBox(
            height: 20,
          ),
           CustomButton(text:'Complete Payment',onTap: (){
             // Navigator.of(context).push(MaterialPageRoute(builder:(context){
             //   return const PaymentDetailsView();
             // }));
             showModalBottomSheet(
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(15)
                 ),
                 context: context, builder:(context)
             {
               return const CustomButtonSheet();
             }
             );
           },),
          const SizedBox(height: 10,)
        ],
      ),
    );
  }
}


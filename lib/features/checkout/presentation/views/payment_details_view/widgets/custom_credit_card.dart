import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_form.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';

import '../../../../../../core/widgets/custom_button.dart';
import '../../thank_you_view/thank_you_view.dart';

class CustomCreditCard extends StatefulWidget {
   CustomCreditCard({Key? key, required this.formKey,required this.autovalidateMode}) : super(key: key);
  final GlobalKey<FormState> formKey;
  AutovalidateMode autovalidateMode;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber='',expiryDate='',cardHolderName='',cvvCode='';
  bool showBackView=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            isHolderNameVisible: true,
            showBackView: showBackView,
            onCreditCardWidgetChange: (value){}
        ),
        CreditCardForm(cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange:(CreditCardModel){
              cardHolderName=CreditCardModel.cardHolderName;
              cardNumber= CreditCardModel.cardNumber;
              expiryDate= CreditCardModel.expiryDate;
              cvvCode=CreditCardModel.cvvCode;
              showBackView=CreditCardModel.isCvvFocused;
              setState(() {

              });
            },
            themeColor: Colors.black,
            formKey: widget.formKey),
        Padding(
          padding:  const EdgeInsets.all(20),
          child: CustomButton(text: 'Pay',
          onTap: (){
            if(
            widget.formKey.currentState!.validate()
            )
            {
              widget.formKey.currentState!.save();
            }else{
              Navigator.of(context).push(
                  MaterialPageRoute(builder:(context){
                    return const ThankYouView();
                  }));
              widget.autovalidateMode= AutovalidateMode.always;
              setState(() {

              });
            }
          },
          ),
        ),
      ],
    );
  }
}
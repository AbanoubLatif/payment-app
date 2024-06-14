
import 'package:flutter/material.dart';
class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 43,
      backgroundColor: Color(0xffEDEDED),
      child: CircleAvatar(
        radius: 35,
        backgroundColor: Color(0xff34A853),
        child: Icon(Icons.check,size: 50,color: Colors.white,),
      ),
    );
  }
}
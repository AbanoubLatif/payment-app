import 'package:flutter/material.dart';

import '../utils/styles.dart';

AppBar CustomAppBar({required final String? title,void Function()? onTap}) {

  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading:GestureDetector(
      onTap:onTap,
        child: const Icon(Icons.arrow_back,color: Colors.black,size: 30,)),
    centerTitle: true,
    title: Text(title??'',
      textAlign: TextAlign.center,
      style:Styles.style25,
    ),
  );
}

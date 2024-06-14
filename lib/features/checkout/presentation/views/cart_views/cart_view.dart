import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_appbar.dart';
import 'cart_view_body.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'My Cart'),
      body: const CartViewBody(),
    );
  }

}

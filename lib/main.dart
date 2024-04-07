import 'package:checkout_app/core/utils/api_keys.dart';
import 'package:checkout_app/features/checkout/presentation/views/my_cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

void main(){
  Stripe.publishableKey = ApiKeys.stripePublishKey;
  runApp(const CheckoutApp());

}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}



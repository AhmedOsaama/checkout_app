import 'package:checkout_app/core/utils/styles.dart';
import 'package:checkout_app/features/checkout/presentation/views/widgets/my_cart_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Center(child: SvgPicture.asset("arrow.svg")),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "My Cart",
          style: Styles.style24,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}

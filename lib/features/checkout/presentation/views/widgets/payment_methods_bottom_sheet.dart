import 'package:checkout_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'custom_button_bloc_consumer.dart';
import 'payment_methods_list_view.dart';

class PaymentMethodsBottomSheet extends StatefulWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  State<PaymentMethodsBottomSheet> createState() =>
      _PaymentMethodsBottomSheetState();
}

class _PaymentMethodsBottomSheetState extends State<PaymentMethodsBottomSheet> {
  bool isPaypal = false;

  updatePaymentMethod({required int index}) {
    if (index == 0) {
      isPaypal = false;
    } else {
      isPaypal = true;
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(
            updatePaymentMethod: updatePaymentMethod,
          ),
          const SizedBox(
            height: 32,
          ),
          // CustomButton(text: 'Continue', isLoading: false,)
          CustomButtonBlocConsumer(
            isPaypal: isPaypal,
          ),
        ],
      ),
    );
  }
}

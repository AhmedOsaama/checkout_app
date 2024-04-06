import 'package:checkout_app/core/utils/api_keys.dart';
import 'package:checkout_app/core/utils/api_service.dart';
import 'package:checkout_app/features/checkout/data/models/PaymentIntent.dart' as model;
import 'package:checkout_app/features/checkout/data/models/PaymentIntentInput.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final apiService = ApiService();
  Future<model.PaymentIntent> createPaymentIntent(PaymentIntentInput paymentIntentInput) async {
    var response = await apiService.post(
        url: 'https://api.stripe.com/v1/payment_intents',
        body: paymentIntentInput.toJson(),
        token: ApiKeys.stripeSecretKey);

    var paymentIntent = model.PaymentIntent.fromJson(response.data);
    return paymentIntent;
  }

  Future<void> initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
            paymentIntentClientSecret: paymentIntentClientSecret, merchantDisplayName: "Ahmed"));
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> makePayment(PaymentIntentInput paymentIntentInput) async {
    var paymentIntent = await createPaymentIntent(paymentIntentInput);
    await initPaymentSheet(paymentIntentClientSecret: paymentIntent.clientSecret!);
    await displayPaymentSheet();
  }
}

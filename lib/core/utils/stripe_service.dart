import 'package:checkout_app/core/utils/api_keys.dart';
import 'package:checkout_app/core/utils/api_service.dart';
import 'package:checkout_app/features/checkout/data/models/PaymentIntent.dart';
import 'package:checkout_app/features/checkout/data/models/PaymentIntentInput.dart';

class StripeService{
  final apiService = ApiService();
  Future<PaymentIntent> createPaymentIntent(PaymentIntentInput paymentIntentInput) async {
      var response = await apiService.post(url: 'https://api.stripe.com/v1/payment_intents',
          body: paymentIntentInput.toJson(),
          token: ApiKeys.stripeSecretKey);

      var paymentIntent = PaymentIntent.fromJson(response.data);
      return paymentIntent;
  }
}
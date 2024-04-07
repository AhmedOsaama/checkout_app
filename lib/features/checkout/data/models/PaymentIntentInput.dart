class PaymentIntentInput{
  final String amount;
  final String currency;

  PaymentIntentInput({required this.amount, required this.currency});

  Map<String, dynamic> toJson(){
    return {
      "amount": amount,
      "currency": currency,
    };
  }
}
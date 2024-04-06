import 'package:checkout_app/features/checkout/data/models/PaymentIntentInput.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

abstract class CheckoutRepo{

  Future<Either<Failure, void>> makePayment(PaymentIntentInput paymentIntentInput);
}


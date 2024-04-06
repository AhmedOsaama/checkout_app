import 'package:checkout_app/core/utils/stripe_service.dart';
import 'package:checkout_app/features/checkout/data/models/PaymentIntentInput.dart';
import 'package:checkout_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

class CheckoutRepoImpl extends CheckoutRepo{
  var stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(PaymentIntentInput paymentIntentInput) async {
    try {
      await stripeService.makePayment(paymentIntentInput);
      return Right(null);
    }catch(e){
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

}
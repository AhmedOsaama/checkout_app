import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:checkout_app/features/checkout/data/models/PaymentIntentInput.dart';
import 'package:checkout_app/features/checkout/data/repos/checkout_repo.dart';
import 'package:checkout_app/features/checkout/data/repos/checkout_repo_impl.dart';
import 'package:meta/meta.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future<void> makePayment({required PaymentIntentInput paymentIntentInput}) async {
    emit(PaymentLoading());
    var data = await checkoutRepo.makePayment(paymentIntentInput);
    data.fold((l) => emit(PaymentFailure(l.errorMessage)), (r) => emit(PaymentSuccess()));
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/features/checkout/data/repos/cehckout_repo.dart';

import '../../../data/models/payment_intent_input.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final CehckoutRepo cehckoutRepo;
  PaymentCubit(this.cehckoutRepo) : super(PaymentInitial());

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());
    var data = await cehckoutRepo.makePayment(paymentIntentInputModel);
    data.fold(
      (failure) => emit(PaymentFailure(failure.message)),
      (r) => emit(
        PaymentSuccess(),
      ),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}

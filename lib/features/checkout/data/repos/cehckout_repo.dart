import 'package:dartz/dartz.dart';
import 'package:payment_app/core/errors/failures.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input.dart';

abstract class CehckoutRepo {
  Future<Either<Failure, void>> makePayment(
      PaymentIntentInputModel paymentIntentInputModel);
}

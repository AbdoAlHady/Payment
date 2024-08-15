import 'package:dartz/dartz.dart';
import 'package:payment_app/core/errors/failures.dart';
import 'package:payment_app/core/service/stripe_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_input.dart';
import 'package:payment_app/features/checkout/data/repos/cehckout_repo.dart';

class CheckoutRepoImpl extends CehckoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment(
      PaymentIntentInputModel paymentIntentInputModel) async {
    try {
      await stripeService.makePayment(paymentIntentInputModel);
      return const Right(null);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

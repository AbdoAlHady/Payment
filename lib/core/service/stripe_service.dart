import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/core/network/apie_service.dart';
import 'package:payment_app/features/checkout/data/models/payment_intent_model/payment_intent_model.dart';

import '../../features/checkout/data/models/payment_intent_input.dart';
import '../utils/api_keys.dart';

class StripeService {
  final ApieService apieService = ApieService();

  Future<PaymentIntentModel> createPaymentItent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    final result = await apieService.post(
      body: paymentIntentInputModel.toJson(),
      url: 'https://api.stripe.com/v1/payment_intents',
      token: ApiKeys.secretKey,
      contentType: 'application/x-www-form-urlencoded',
    );

    return PaymentIntentModel.fromJson(result.data);
  }

  Future<void> initPaymentSheet(
      {required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
      paymentIntentClientSecret: paymentIntentClientSecret,
      merchantDisplayName: 'Abdo Al hady', // name of the owner of the business
    ));
  }

  Future<void> displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> makePayment(
      PaymentIntentInputModel paymentIntentInputModel) async {
    // create payment intent
    var paymentIntentModel = await createPaymentItent(paymentIntentInputModel);
    // init payment sheet
    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    // display payment sheet
    await displayPaymentSheet();
  }
}

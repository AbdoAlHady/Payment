import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_app_bar.dart';

class PaymentDetailsView extends StatelessWidget {
  const PaymentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: 'Payment Details'),
    );
  }
}

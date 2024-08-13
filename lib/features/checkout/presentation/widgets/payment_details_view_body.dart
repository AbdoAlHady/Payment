import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: PaymentMethodsListView()),
        const SliverToBoxAdapter(child: CustomCreditCard()),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12, left: 16, right: 16),
              child: CustomButton(
                text: 'Pay',
                onPressed: () {},
              ),
            ),
          ),
        ),
      ],
    );
  }
}

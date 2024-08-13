import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_methods_list_view.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: const Column(
        children: [
          PaymentMethodsListView(),
          CustomCreditCart(),
        ],
      ),
    );
  }
}

class CustomCreditCart extends StatefulWidget {
  const CustomCreditCart({super.key});

  @override
  State<CustomCreditCart> createState() => _CustomCreditCartState();
}

class _CustomCreditCartState extends State<CustomCreditCart> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          isHolderNameVisible: true,
          showBackView: showBackView,
          onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {},
        ),
        CreditCardForm(
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel) {
              setState(() {
                cardNumber = creditCardModel.cardNumber;
                expiryDate = creditCardModel.expiryDate;
                cardHolderName = creditCardModel.cardHolderName;
                cvvCode = creditCardModel.cvvCode;
                showBackView = creditCardModel.isCvvFocused;
              });
            },
            formKey: formKey),
      ],
    );
  }
}

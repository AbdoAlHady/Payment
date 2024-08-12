import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_details_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({super.key});

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  final List<String> images = const [
    'assets/images/card.svg',
    'assets/images/payPal.svg',
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: GestureDetector(
            onTap: () {
              setState(() {
                activeIndex = index;
              });
            },
            child: PaymentDetailsItem(
              isActive: activeIndex == index,
              image: images[index],
            ),
          ),
        ),
        itemCount: images.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/views/payment_details_view.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_app_bar.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/widgets/total_price.dart';

import '../widgets/order_info_item.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'My Cart'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 25),
            Expanded(child: Image.asset('assets/images/basket_image.png')),
            const SizedBox(height: 25),
            const OrderInfoItem(title: 'Order Subtotal', price: 42.97),
            const SizedBox(height: 3),
            const OrderInfoItem(title: 'Discount', price: 0),
            const SizedBox(height: 3),
            const OrderInfoItem(title: 'Shipping', price: 8),
            const SizedBox(height: 10),
            const Divider(thickness: 2.0, height: 24),
            const TotalPrice(title: 'Total', value: 50.97),
            const SizedBox(height: 16),
            CustomButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PaymentDetailsView()));
                },
                text: 'Complete Payment'),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}

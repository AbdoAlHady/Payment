import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_button.dart';
import 'package:payment_app/features/checkout/presentation/widgets/total_price.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../widgets/order_info_item.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: AppTextStyles.font25BlackW500,
        ),
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 25),
              Image.asset('assets/images/basket_image.png'),
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
              CustomButton(onPressed: () {}),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

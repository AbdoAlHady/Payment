import 'package:flutter/material.dart';
import 'package:payment_app/core/theme/app_text_styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.price});
  final String title;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.font18BlackW400,
        ),
        const Spacer(),
        Text(
          '\$$price',
          style: AppTextStyles.font18BlackW400,
        ),
      ],
    );
  }
}

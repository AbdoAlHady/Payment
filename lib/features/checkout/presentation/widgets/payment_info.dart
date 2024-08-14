import 'package:flutter/material.dart';
import 'package:payment_app/core/theme/app_text_styles.dart';

class PaymentInfo extends StatelessWidget {
  const PaymentInfo({super.key, required this.title, required this.value});
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppTextStyles.font18BlackW400,
        ),
        Text(
          value,
          style: AppTextStyles.font18BlackW600,
        ),
      ],
    );
  }
}

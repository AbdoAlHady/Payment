import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.font24BlackW600,
        ),
        const Spacer(),
        Text(
          '\$$value',
          style: AppTextStyles.font24BlackW600,
        ),
      ],
    );
  }
}

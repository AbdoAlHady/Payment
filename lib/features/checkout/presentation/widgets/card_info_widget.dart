import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/theme/app_text_styles.dart';

class CardInfoWidegt extends StatelessWidget {
  const CardInfoWidegt({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 73,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 23),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        children: [
          RepaintBoundary(
              child: SvgPicture.asset('assets/images/master_card.svg')),
          const SizedBox(width: 23),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Credit Card',
                style: AppTextStyles.font18BlackW400,
              ),
              Text(
                'Mastercard **78',
                style: AppTextStyles.font16BlackW400,
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_app/core/theme/app_text_styles.dart';
import 'package:payment_app/features/checkout/presentation/widgets/card_info_widget.dart';
import 'package:payment_app/features/checkout/presentation/widgets/payment_info.dart';
import 'package:payment_app/features/checkout/presentation/widgets/total_price.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 66, left: 23, right: 23),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xFFD9D9D9),
      ),
      child: Column(
        children: [
          const Text(
            'Thank You!',
            style: AppTextStyles.font25BlackW500,
          ),
          const Text(
            'Your transaction was successful',
            style: AppTextStyles.font20BlackW400,
          ),
          const SizedBox(height: 40),
          const PaymentInfo(title: 'Date', value: '12/12/2021'),
          const SizedBox(height: 20),
          const PaymentInfo(title: 'Time', value: '10:15 AM'),
          const SizedBox(height: 20),
          const PaymentInfo(title: '10:15 AM', value: 'Sam Louis'),
          const SizedBox(height: 30),
          const Divider(thickness: 2, height: 0),
          const SizedBox(height: 30),
          const TotalPrice(title: 'Total', value: 50.97),
          const SizedBox(height: 15),
          const CardInfoWidegt(),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/images/parcode.svg',
                height: 71,
              ),
              Container(
                height: 58,
                width: 113,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border:
                      Border.all(color: const Color(0xff34A853), width: 1.5),
                ),
                child: Text(
                  'PAID',
                  style: AppTextStyles.font24BlackW600.copyWith(
                    color: const Color(0xff34A853),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 31,
          )
        ],
      ),
    );
  }
}

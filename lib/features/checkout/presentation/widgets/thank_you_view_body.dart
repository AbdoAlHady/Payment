import 'package:flutter/material.dart';
import 'package:payment_app/features/checkout/presentation/widgets/custom_cehck_icon.dart';
import 'package:payment_app/features/checkout/presentation/widgets/dashed_line.dart';
import 'package:payment_app/features/checkout/presentation/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            left: 20 + 8,
            right: 20 + 8,
            child: const DashedLine(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            left: -20,
            child: const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            top: -50,
            left: 0,
            right: 0,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}

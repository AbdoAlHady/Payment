import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentDetailsItem extends StatelessWidget {
  const PaymentDetailsItem({
    super.key,
    required this.isActive,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
            color: isActive ? Colors.green : Colors.grey, width: 1.50),
        boxShadow: isActive
            ? const [
                BoxShadow(
                  color: Colors.green,
                  spreadRadius: 0,
                  blurRadius: 4,
                  offset: Offset(0, 0),
                ),
              ]
            : null,
      ),
      child: SvgPicture.asset('assets/images/card.svg', width: 45, height: 30),
    );
  }
}

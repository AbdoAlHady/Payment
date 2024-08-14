import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        30,
        (index) {
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(
                height: 3,
                color: const Color(0xffBBBBBB),
              ),
            ),
          );
        },
      ),
    );
  }
}

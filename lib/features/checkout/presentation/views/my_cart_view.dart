import 'package:flutter/material.dart';

import '../../../../core/theme/app_text_styles.dart';

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
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 25),
          Image.asset('assets/images/basket_image.png'),
        ],
      ),
    );
  }
}

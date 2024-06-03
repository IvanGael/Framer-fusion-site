
import 'package:flutter/material.dart';
import 'package:framer_fusion/constants/images.dart';

import '../../constants/colors.dart';

class ThreeDevicesSection extends StatelessWidget {
  const ThreeDevicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.secondary.withOpacity(0.1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppImages.threeDevices,
            width: 1000,
            height: 800,
            fit: BoxFit.contain,
          )
        ],
      ),
    );
  }
}
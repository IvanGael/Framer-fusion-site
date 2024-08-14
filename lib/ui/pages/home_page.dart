import 'package:flutter/material.dart';
import 'package:framer_fusion/constants/colors.dart';
import 'package:framer_fusion/constants/images.dart';
import 'package:framer_fusion/ui/widgets/top_bar.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/device_section.dart';
import '../widgets/download_section.dart';
import '../widgets/three_devices_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        children: [
          Container(
            color: AppColors.primary,
            child: Column(
              children: [
                const TopBar(),
                const SizedBox(height: 80,),
                Image.asset(
                  AppImages.appOfTheDay,
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 14,),
                Text(
                  "Transform Your Ideas",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "into Art with AI Image",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  "Generation",
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 36,
                    fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 60,),
                Transform.translate(
                  offset: const Offset(-20, 0),
                  child: const DeviceSection(),
                ),
                const SizedBox(height: 30,),
                const DownloadSection(),
                Transform.translate(
                  offset: const Offset(0, 250),
                  child: const ThreeDevicesSection(),
                ),
                const SizedBox(height: 100,),
                const Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomBar(),
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}

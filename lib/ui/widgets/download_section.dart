
import 'package:flutter/material.dart';
import 'package:framer_fusion/constants/colors.dart';
import 'package:framer_fusion/constants/images.dart';

class DownloadSection extends StatefulWidget {
  const DownloadSection({super.key});

  @override
  State<DownloadSection> createState() => _DownloadSectionState();
}

class _DownloadSectionState extends State<DownloadSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.secondary.withOpacity(0.3),
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Image.asset(
            AppImages.fusion,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Text(
            "Fusion is a ",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "template that lets",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "you present your",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "app in a stylish",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
          Text(
            "way.",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColors.secondary),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.white, width: 1),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  padding: WidgetStateProperty.all(EdgeInsets.all(10))
                ),
                onPressed: (){

                }, 
                child: Image.asset(
                  AppImages.downloadOnAppStore,
                  width: 120,
                  height: 40,
                )
              ),
              SizedBox(width: 20,),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(AppColors.secondary),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.white, width: 1),
                      borderRadius: BorderRadius.circular(8)
                    )
                  ),
                  padding: WidgetStateProperty.all(EdgeInsets.all(10))
                ),
                onPressed: (){

                }, 
                child: Image.asset(
                  AppImages.downloadOnGooglePlay,
                  width: 120,
                  height: 40,
                )
              )
            ],
          )
        ],
      ),
    );
  }
}
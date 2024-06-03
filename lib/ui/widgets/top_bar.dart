
import 'package:flutter/material.dart';
import 'package:framer_fusion/constants/colors.dart';
import 'package:framer_fusion/constants/images.dart';
import 'package:framer_fusion/ui/pages/home_page.dart';

class TopBar extends StatefulWidget {
  const TopBar({super.key});

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 130,
      color: AppColors.secondary.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // SizedBox(width: 3,),
          Row(
            children: [
              Image.asset(
                AppImages.fusion,
                width: 60,
                height: 60,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 20,),
              TextButton(
                onPressed: (){
                  context.navigate(page: HomePage());
                }, 
                child: Text(
                "Fusion",
                style: TextStyle(
                  color: AppColors.white, 
                  fontSize: 24, 
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
                ),
              )
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: (){

                }, 
                child: Text(
                  "Blog",
                  style: TextStyle(
                    color: AppColors.greyShade200.withOpacity(0.7),
                    fontSize: 18
                  ),
                )
              ),
              SizedBox(width: 20,),
              TextButton(
                onPressed: (){

                }, 
                child: Text(
                "Updates",
                style: TextStyle(
                  color: AppColors.greyShade200.withOpacity(0.7),
                  fontSize: 18
                ),
              )
              ),
              SizedBox(width: 20,),
              TextButton(
                onPressed: (){

                }, 
                child: Text(
                "Support",
                style: TextStyle(
                  color: AppColors.greyShade200.withOpacity(0.7),
                  fontSize: 18
                ),
              )
              )
            ],
          ),
          // SizedBox(width: 3,),
        ],
      ),
    );
  }
}



extension NavigatorExtension on BuildContext {
  void navigate({
    required Widget page
  }) {
    Navigator.push(
      this, 
      MaterialPageRoute(builder: (context) => page)
    );
  }
}
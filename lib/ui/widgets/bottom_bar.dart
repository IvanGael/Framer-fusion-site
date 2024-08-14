
import 'package:flutter/material.dart';
import 'package:framer_fusion/constants/colors.dart';
import 'package:framer_fusion/constants/images.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      color: AppColors.secondary2,
      child: Column(
        children: [
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: (){

                }, 
                child: Text(
                  "Blog",
                  style: TextStyle(
                    color: AppColors.greyShade200,
                    fontSize: 18,
                    fontWeight: FontWeight.w500
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
                  color: AppColors.greyShade200,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
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
                  color: AppColors.greyShade200,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              )
              )
            ],
          ),
          SizedBox(height: 60,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Expanded(child: Divider(color: AppColors.white, thickness: 0.2,)),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "© 2024 Fusion, Inc.",
                  style: TextStyle(color: AppColors.white),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: (){

                      }, 
                      icon: Image.asset(
                      AppImages.youtube,
                      width: 35,
                      height: 35
                    )
                    ),
                    IconButton(
                      onPressed: (){
                        
                      }, 
                      icon: Image.asset(
                      AppImages.instagram,
                      width: 35,
                      height: 35
                    )
                    ),
                    IconButton(
                      onPressed: (){
                        
                      }, 
                      icon: Image.asset(
                      AppImages.twitter,
                      width: 35,
                      height: 35
                    )
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
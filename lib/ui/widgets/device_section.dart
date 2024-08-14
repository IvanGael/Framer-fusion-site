// ignore_for_file: unused_field

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:framer_fusion/constants/colors.dart';
import 'package:framer_fusion/constants/images.dart';

import '../../models/data.dart';
import 'gradient_text.dart';

class DeviceSection extends StatefulWidget {
  const DeviceSection({super.key});

  @override
  State<DeviceSection> createState() => _DeviceSectionState();
}

class _DeviceSectionState extends State<DeviceSection>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int _currentPage = 0;

  List<Data> data = [
    Data(
        image: AppImages.deviceS1,
        title: "FILTERS",
        subTitle:
            "With our app, you have access to a wide \n variety of filters to make your stable \n diffusion photos truly one-of-a-kind."),
    Data(
        image: AppImages.deviceS2,
        title: "USER-FRIENDLY",
        subTitle:
            "Our app is designed to be user-friendly, \n so you can start creating stunning stable \n diffusion photos right away."),
    Data(
        image: AppImages.deviceS3,
        title: "SHARE",
        subTitle:
            "Share your stable diffusion photos with \n just a tap of a button!")
  ];

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage)
      ..addListener(() {
        setState(() {});
      });

    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: -pi / 40).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });

    // Start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<Color> getGradientColors(int index) {
    if (index == 0) {
      return AppColors.gradient1;
    } else if (index == 1) {
      return AppColors.gradient2;
    }
    return AppColors.gradient3;
  }

  // Initial position of the device
  double _left = 100.0;
  double _top = 100.0;

  // Variables to track the device's position during the drag
  double _startLeft = 100.0;
  double _startTop = 100.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1000,
      child: PageView.builder(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              _currentPage = value;
            });
          },
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // RotationTransition(
                //   turns: _animation,
                //   child: InkWell(

                //     child: Device(data: data, index: index,),
                //   ),
                // ),
                Draggable(
                  data: index,
                  feedback: RotationTransition(
                    turns: _animation,
                    child: Device(
                      data: data,
                      index: index,
                    ),
                  ),
                  childWhenDragging: Container(), // Placeholder widget when dragging
                  child: RotationTransition(
                    turns: _animation,
                    child: Device(
                      data: data,
                      index: index,
                    ),
                  ),
                  onDragStarted: () {
                    setState(() {
                      // Record the starting position
                      _startLeft = _left;
                      _startTop = _top;
                    });
                  },
                  onDragEnd: (details) {
                    setState(() {
                      // Update the position after drag ends
                      _left = details.offset.dx;
                      _top = details.offset.dy;
                    });
                  },
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText(
                      data[index].title,
                      gradient: LinearGradient(
                        colors: getGradientColors(index),
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      data[index].subTitle,
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
                // DragTarget<int>(
                //   onAcceptWithDetails: (draggedDetails) {
                //     setState(() {
                //       // Perform actions when the dragged item is dropped
                //       // For example, you could update the state or rearrange items
                //     });
                //   },
                //   builder: (context, acceptedData, rejectedData) {
                //     return Container();
                //   },
                // ),
              ],
            );
          }),
    );
  }
}

class Device extends StatelessWidget {
  const Device({super.key, required this.data, required this.index});

  final List<Data> data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      data[index].image,
      width: 600,
      height: 800,
    );
  }
}

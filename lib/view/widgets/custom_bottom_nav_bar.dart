
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stroll_app_01/constants/constants.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 45.0,
      child: ColoredBox(
        color: sBottomBarColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomBarIcon(
                iconPath: "assets/media/icons/svg/card_icon.svg",
                onTap: (){},
                size: 20.0,
              ),
              BottomBarIcon(
                iconPath: "assets/media/icons/svg/fire_icon.svg",
                onTap: (){},
                hasNotification: true,
                size: 16.0,
              ),
              BottomBarIcon(
                iconPath: "assets/media/icons/svg/chat_bubble_icon.svg",
                onTap: (){},
                hasNotification: true,
                notificationCount: 10,
                size: 20.0,
              ),
              BottomBarIcon(
                iconPath: "assets/media/icons/svg/user_icon.svg",
                onTap: (){},
                size: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBarIcon extends StatelessWidget {
  final String iconPath;
    final double? size;
    final bool? hasNotification;
    final int? notificationCount;
    final VoidCallback onTap;

  const BottomBarIcon({
    super.key,
    required this.iconPath,
    this.size,
    this.hasNotification = false,
    this.notificationCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          SvgPicture.asset(
            iconPath,
            width: size,
             color: sBottomBarIconColor,
          ),
          if(hasNotification == true) Positioned(
            top: -4.0,
            right: -8.0,
            child: SizedBox(
              width: 16.0,
              height: 10.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: sPrimaryColor,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: notificationCount != null ? Center(
                  child: Text(
                    notificationCount.toString(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 8.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ) : const SizedBox.shrink(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
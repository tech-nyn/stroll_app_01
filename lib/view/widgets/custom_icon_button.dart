

import 'package:flutter/material.dart';
import 'package:stroll_app_01/constants/constants.dart';

class CustomIconButton extends StatelessWidget {
  final Widget child;
  final bool? isFilled;

  const CustomIconButton({
    super.key,
    required this.child,
    this.isFilled = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40.0,
      height: 40.0,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: sPrimaryColor, width: 2.0),
          borderRadius: BorderRadius.circular(20.0),
          color: isFilled! ? sPrimaryColor : Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        ),
      ),
    );
  }
}

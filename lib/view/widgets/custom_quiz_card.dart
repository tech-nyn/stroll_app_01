

import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import 'custom_texts.dart';

class CustomQuizOptionCard extends StatelessWidget {
  final String option;
  final String label;
  final bool? isSelected;
  final VoidCallback onTap;

  const CustomQuizOptionCard({
    super.key,
    required this.option,
    required this.label,
    this.isSelected = false,
    required this.onTap,
  });

  TextStyle normalTextStyle(){
    return const TextStyle(color: Colors.white, fontSize: 12.0);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: (MediaQuery.of(context).size.width / 2) - 20.0,
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
        decoration: BoxDecoration(
          color: sGreyColor,
          border: Border.all(
            width: 2.0,
            color: isSelected! ? sPrimaryColor : sGreyColor,
          ),
          borderRadius: BorderRadius.circular(10.0)
        ),
        child: Row(
          children: [
            SizedBox(
              width: 24.0,
              height: 24.0,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isSelected! ? sPrimaryColor : Colors.transparent,
                  border: Border.all(
                    color: isSelected! ? sPrimaryColor : sWhiteColor
                  ),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(
                  child: CustomText.medium(text: option)
                ),
              ),
            ),
            const SizedBox(width: 4.0,),
            Expanded(
              child: CustomText.medium(
                text: label
              )
            )
          ],
        ),
      ),
    );
  }
}

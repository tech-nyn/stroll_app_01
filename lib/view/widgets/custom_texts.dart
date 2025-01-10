
import 'package:flutter/material.dart';

import '../../constants/constants.dart';


class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextOverflow? overflow;
  final int? maxLines;
  final FontStyle? fontStyle;
  final FontWeight? fontWeight;
  final double? height;
  final double? fontSize;
  final String? fontFamily;

  const CustomText({
    super.key,
    required this.text,
    this.color = sWhiteColor,
    this.overflow = TextOverflow.ellipsis,
    this.maxLines = 2,
    this.fontStyle,
    this.fontWeight,
    this.height,
    this.fontSize,
    this.fontFamily,
  });


  factory CustomText.small({
    required String text,
    Color? color,
    TextOverflow? overflow,
    int? maxLines,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    double? fontSize,
    String? fontFamily,
  }) {
    return CustomText(
      text: text,
      color: color ?? sWhiteColor,
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines ?? 2,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      height: height,
      fontSize: fontSize ?? 10.0,
      fontFamily: fontFamily,
      
    );
  }


  factory CustomText.medium({
    required String text,
    Color? color,
    TextOverflow? overflow,
    int? maxLines,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    double? fontSize,
    String? fontFamily,
  }) {
    return CustomText(
      text: text,
      color: color ?? sWhiteColor,
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines ?? 2,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      height: height,
      fontSize: fontSize ?? 12.0,
      fontFamily: fontFamily,
    );
  }


  factory CustomText.subheading({
    required String text,
    Color? color,
    TextOverflow? overflow,
    int? maxLines,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    double? fontSize,
    String? fontFamily,
  }) {
    return CustomText(
      text: text,
      color: color ?? sWhiteColor,
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines ?? 2,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      height: height,
      fontSize: fontSize ?? 14.0,
      fontFamily: fontFamily,
    );
  }


  factory CustomText.heading({
    required String text,
    Color? color,
    TextOverflow? overflow,
    int? maxLines,
    FontStyle? fontStyle,
    FontWeight? fontWeight,
    double? height,
    double? fontSize,
    String? fontFamily,
  }) {
    return CustomText(
      text: text,
      color: color ?? sWhiteColor,
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines ?? 2,
      fontStyle: fontStyle,
      fontWeight: fontWeight ?? FontWeight.bold,
      height: height,
      fontSize: fontSize ?? 32.0,
      fontFamily: fontFamily,
    );
  }



  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontStyle: fontStyle,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        height: height
      ),
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
















// class SmallText extends StatelessWidget {
//   final String text;
//   final TextStyle? style;

//   const SmallText({
//     super.key,
//     required this.text,
//     this.style = _style
//   });
  
//   static const TextStyle _style = TextStyle(
//     color: Colors.white, 
//     fontSize: 10.0,
//     fontWeight: FontWeight.w100,
//     overflow: TextOverflow.ellipsis
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: style,
//       maxLines: 2,
//     );
//   }
// }




// class NormalText extends StatelessWidget {
//   final String text;
//   final TextStyle? style;
//   const NormalText({
//     super.key,
//     required this.text,
//     this.style = _style
//   });
  
//   static const TextStyle _style = TextStyle(
//     color: Colors.white, 
//     fontSize: 12.0,
//     overflow: TextOverflow.ellipsis
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: style,
//       maxLines: 2,
//     );
//   }
// }





// class SubtitleText extends StatelessWidget {
//   final String text;
//   final TextStyle? style;

//   const SubtitleText({
//     super.key,
//     required this.text,
//     this.style = _style
//   });
  
//   static const TextStyle _style = TextStyle(
//     color: Colors.white, 
//     fontSize: 14.0,
//     height: 1.0,
//     overflow: TextOverflow.ellipsis
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: style,
//       maxLines: 2,
//     );
//   }
// }





// class TitleText extends StatelessWidget {
//   final String text;
//   final TextStyle? style;

//   const TitleText({
//     super.key,
//     required this.text,
//     this.style = _style
//   });
  
//   static const TextStyle _style = TextStyle(
//     color: sPrimaryColor, 
//     fontSize: 32.0,
//     fontWeight: FontWeight.bold,
//     overflow: TextOverflow.ellipsis
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       text,
//       style: style,
//       maxLines: 2,
//     );
//   }
// }





import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Text("Lol"),
        child: SvgPicture.asset("assets/media/icons/svg/brand_icon.svg", width: 200.0,),
      ),
    );
  }
}
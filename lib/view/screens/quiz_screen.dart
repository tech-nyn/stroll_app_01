

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:stroll_app_01/providers/providers.dart';

class QuizScreen extends ConsumerWidget {
  const QuizScreen({super.key});


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quizProvider = ref.watch(pollProvider);
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selected Quiz Question ID = ${quizProvider?.questionId}"),
            Text("Selected Quiz Option ID = ${quizProvider?.optionId}"),
            SvgPicture.asset("assets/media/icons/svg/brand_icon.svg", width: 200.0,),
          ],
        ),
      ),
    );
  }
}
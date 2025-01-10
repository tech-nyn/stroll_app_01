

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stroll_app_01/constants/constants.dart';

import 'package:stroll_app_01/providers/providers.dart';
import 'package:stroll_app_01/view/widgets/widgets.dart';




class QuizScreen extends ConsumerStatefulWidget {
  const QuizScreen({super.key});

  @override
  ConsumerState<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends ConsumerState<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    final quizProvider = ref.watch(pollProvider);
    final Size size = MediaQuery.of(context).size;
    final EdgeInsets padding = MediaQuery.of(context).padding;

    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: SizedBox(
          width: size.width ,
          height: size.height - (padding.top + padding.bottom),
          child: Stack(
            children: [
              Positioned(
                top: -58.0,
                bottom: -65.0,
                right: 0.0,
                left: 0.0,
                child: Image.asset(
                  "assets/media/images/image-11.png",
                  fit: BoxFit.cover,
                  height: size.height - (padding.top + padding.bottom),
                ),
              ),
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.4, 0.8],
                      colors: [
                        Colors.black.withOpacity(.5),
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(1.0)
                      ]
                    )
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: _pageHeaderSection(),
                    ),
                    _pageBottomSection(context, quizProvider!)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: CustomBottomNavigationBar(size: size),
    );
  }




  Column _pageHeaderSection() {
    return Column(
      children: [
        Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText.heading(text: "Stroll Bonfire", color: sPrimaryColor),
              const SizedBox(width: 8.0),
              SvgPicture.asset("assets/media/icons/svg/icon_down.svg", width: 14.0,)
            ],
          ),
        ),Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/media/icons/svg/timer_icon.svg", width: 12.0),
            const SizedBox(width: 2.0),
            CustomText.small(text: "22h 00m"),
            const SizedBox(width: 8.0),
            SvgPicture.asset("assets/media/icons/svg/user_icon.svg", width: 11.0),
            const SizedBox(width: 2.0),
            CustomText.small(text: "103"),
          ],
        )
      ],
    );
  }




  Column _pageBottomSection(BuildContext context, PollState pollState) => Column(
    children: [
      ListTile(
        dense: true,
        contentPadding: const EdgeInsets.all(0),
        leading: const CircleAvatar(
          backgroundImage: AssetImage("assets/media/images/image-03.jpeg"),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 6.0),
          child: CustomText.small(text: "Angelina, 20"),
        ),
        subtitle: CustomText.subheading(text: pollState.poll!.question!),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: CustomText.small(text: pollState.poll!.opinion!, fontStyle: FontStyle.italic,),
      ),
      Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        children: [
          for(var i in pollState.poll!.options!)CustomQuizOptionCard(
            option: i.entry,
            label: i.label,
            isSelected: i.id == pollState.selectedOption,
            onTap: (){
              // print("initial ID: ${i.id}");
              ref.read(pollProvider.notifier).toggleOption(i.id);
              // print("final ID  : ${i.id}");
            },
          ),
          
        ]
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText.small(text: "Pick your option \nsee who has a similar mind"),
            Row(
              children: [
                CustomIconButton(
                  child: SvgPicture.asset(
                    "assets/media/icons/svg/mic_icon.svg",
                    color: sPrimaryColor,
                  ),
                ),
                const SizedBox(width: 4.0),
                const CustomIconButton(
                  isFilled: true,
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ],
        ),
      )
    ],
  );
}
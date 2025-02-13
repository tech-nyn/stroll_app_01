
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'view/screens/screens.dart';



void main() {
  runApp(
    const ProviderScope(
      child: MyApp()
    )
  );
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: "nunito_sans"
      ),
      debugShowCheckedModeBanner: false,
      home: const QuizScreen(),
    );
  }
}

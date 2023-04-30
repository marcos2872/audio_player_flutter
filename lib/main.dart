import 'package:flutter/material.dart';
import 'package:player_audio/app/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Player Audio',
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/' :(context) => const HomeView(),
      },
    );
  }
}

import 'package:flutter/material.dart';

import 'src/pages/music_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cultura POP Radio Galaxi.com.ve',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MusicPage(title: 'Cultura POP * Radio Galaxi.com.ve'),
    );
  }
}

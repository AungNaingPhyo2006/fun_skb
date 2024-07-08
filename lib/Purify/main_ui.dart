import 'package:flutter/material.dart';
import 'package:fun_skb/Purify/dhamma_list.dart';

class MainUi extends StatefulWidget {
  const MainUi({super.key});

  @override
  State<MainUi> createState() => _MainUiWidgetState();
}

class _MainUiWidgetState extends State<MainUi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 84, 36, 168),
              Color.fromARGB(255, 129, 58, 183),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: const DhammaList(),
        ),
      ),
    );
  }
}

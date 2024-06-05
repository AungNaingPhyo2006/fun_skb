import 'package:flutter/material.dart';
import 'package:fun_skb/widgets/myTextWidget.dart';

class KnowledgePage extends StatelessWidget {
  const KnowledgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        MyTextWidget(
          name: "iPhone",
          description: "iPhone is the stylist phone ever.",
        ),
        MyTextWidget(
          name: "iPhone",
          description: "iPhone is the stylist phone ever.",
        )
      ],
    );
  }
}

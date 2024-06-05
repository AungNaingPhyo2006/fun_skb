import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  MyTextWidget({
    Key? key,
    this.name,
    this.description,
  }) : super(key: key);

  final String? name;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: name ?? '',
            style: const TextStyle(fontStyle: FontStyle.italic),
          ),
          TextSpan(
            text: description ?? '',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

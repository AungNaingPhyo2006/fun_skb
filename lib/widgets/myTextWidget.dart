import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  final String? name;
  final String? description;
  final IconData? icon;

  const MyTextWidget({
    Key? key,
    this.name,
    this.description,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5),
      child: Row(
        children: [
          if (icon != null)
            Icon(icon, size: 24.0), // Display the icon if provided
          const SizedBox(
              width: 8.0), // Add some space between the icon and text
          Expanded(
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "$name: ",
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: description,
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

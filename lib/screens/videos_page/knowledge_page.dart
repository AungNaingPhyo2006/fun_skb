import 'package:flutter/material.dart';
import 'package:fun_skb/widgets/myButtonWidget.dart';
import 'package:fun_skb/widgets/myTextWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class KnowledgePage extends StatelessWidget {
  const KnowledgePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const MyTextWidget(
          name: "iPhone x",
          description: "iPhone is the stylist phone ever.",
          icon: Icons.phone_iphone,
        ),
        const MyTextWidget(
          name: "iPhone x",
          description: "iPhone is the stylist phone ever.",
          icon: Icons.phone_android,
        ),
        MyButton(
          label: 'OK',
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          backgroundColor: Colors.blue,
          textColor: Colors.white,
          topBorder: const BorderSide(width: 2.0, color: Colors.white),
          leftBorder: const BorderSide(width: 2.0, color: Colors.white),
          rightBorder: const BorderSide(width: 2.0, color: Colors.black),
          bottomBorder: const BorderSide(width: 2.0, color: Colors.black),
          innerTopBorder: const BorderSide(width: 2.0, color: Colors.grey),
          innerLeftBorder: const BorderSide(width: 2.0, color: Colors.grey),
          innerRightBorder: const BorderSide(width: 2.0, color: Colors.grey),
          innerBottomBorder: const BorderSide(width: 2.0, color: Colors.grey),
          onPressed: () {
            Fluttertoast.showToast(
              msg: "You Pressed the Button!",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.black,
              textColor: Colors.white,
              fontSize: 16.0,
            );
          },
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:fun_skb/Purify/dhamma_detail.dart';
import 'package:fun_skb/Purify/models/sutta_data.dart';

class DhammaList extends StatelessWidget {
  const DhammaList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'သုတ္တန်ဒေသနာတော်များ',
          textAlign: TextAlign.center,
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        )),
      ),
      body: ListView.builder(
          itemCount: suttas.length,
          itemBuilder: (context, index) {
            final sutta = suttas[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DhammaDetailScreen(sutta: sutta),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: Text(sutta.name),
              ),
            );
          }),
    );
  }
}

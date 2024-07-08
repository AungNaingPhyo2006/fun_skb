import 'package:flutter/material.dart';
import 'package:fun_skb/Purify/models/sutta.dart';

class DhammaDetailScreen extends StatelessWidget {
  final Sutta sutta;
  const DhammaDetailScreen({super.key, required this.sutta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sutta.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'History:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ...sutta.history.map((his) => Text(his)).toList(),
              const SizedBox(height: 16),
              const Text(
                'Method:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(sutta.method),
            ],
          ),
        ),
      ),
    );
  }
}

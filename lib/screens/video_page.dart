import 'package:flutter/material.dart';
import 'package:fun_skb/screens/videos_page/dhamma_page.dart';
import 'package:fun_skb/screens/videos_page/entertainment_page.dart';
import 'package:fun_skb/screens/videos_page/knowledge_page.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TabBar(
                tabs: [
                  Tab(
                    text: 'Dhamma',
                  ),
                  Tab(
                    text: 'Entertainment',
                  ),
                  Tab(
                    text: 'Knowledge',
                  ),
                ],
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            DhammaPage(),
            EntertainmentPage(),
            KnowledgePage(),
          ],
        ),
      ),
    );
  }
}

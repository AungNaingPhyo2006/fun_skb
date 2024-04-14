import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({super.key});

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
                    text: 'Incoming',
                  ),
                  Tab(
                    text: 'Outgoing',
                  ),
                  Tab(
                    text: 'Missed',
                  ),
                ],
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            IncomingPage(),
            OutgoingPage(),
            MissedPage(),
          ],
        ),
      ),
    );
  }
}

class IncomingPage extends StatelessWidget {
  const IncomingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hey ! I am Incoming Calls Page'),
    );
  }
}

class OutgoingPage extends StatelessWidget {
  const OutgoingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hi ! I am Outgoing Calls Page'),
    );
  }
}

class MissedPage extends StatelessWidget {
  const MissedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Hi , I am Missed Calls Page'),
    );
  }
}

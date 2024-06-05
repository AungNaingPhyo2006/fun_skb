// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// String youtubeApiUrl = 'https://www.googleapis.com/youtube/v3';
// String youtubeEmbed = 'https://www.youtube.com/embed';
// String youtubeWatch = 'https://www.youtube.com/watch?v';
// String youtubeSearch = 'https://www.youtube.com/results?search_query';
// String apiKey = 'AIzaSyCpjIdSNvjvsfW8kferxS2-ov93DtpD3PU';

class DhammaPage extends StatefulWidget {
  const DhammaPage({Key? key}) : super(key: key);

  @override
  State<DhammaPage> createState() => _DhammaPageState();
}

class _DhammaPageState extends State<DhammaPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String displayText = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Search Your Videos',
                  hintText: 'Enter Your Video Name',
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    displayText = nameController.text;
                  });
                },
                child: const Text("Show Name")),
            Text(
              displayText,
              style: const TextStyle(fontSize: 20),
            ),
            const Divider(
              height: 10,
            ),
          ],
        ));
  }
}

// https://github.com/AungNaingPhyo2006/GuitarHero/blob/main/src/pages/karaoke/SearchSong.tsx

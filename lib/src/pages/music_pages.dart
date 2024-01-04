// ignore_for_file: non_constant_identifier_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({super.key, required this.title});

  final String title;

  @override
  State<MusicPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MusicPage> {
  int _control = 0;
  final URL_RADIO = "http://cloudstream2036.conectarhosting.com/8176/stream";

  final player = AudioPlayer();
  bool isPlayer = false;

  void _actionAudio() {
    setState(() {
      _control = _control == 1 ? 0 : 1;

      if (_control == 1) {
        player.play(DeviceFileSource(URL_RADIO)).then((value) => null);
        isPlayer = true;
      } else {
        player.stop().then((value) => null);
        isPlayer = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                padding: const EdgeInsets.all(0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child:
                      const Image(image: AssetImage('assets/images/logo.jpg')),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _actionAudio,
        tooltip: 'Iniciar',
        child: Icon(isPlayer ? Icons.stop : Icons.play_arrow),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

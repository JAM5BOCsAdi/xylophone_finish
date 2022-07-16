import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

/* ------------------------------ STATELESS WIDGET ------------------------------ */
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  /* ---------------- LAYOUT ---------------- */
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Xylophone Home Page'),
    );
  }
}

/* ------------------------------ STATEFUL WIDGET ------------------------------ */
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /* ---------------- VARIABLES ---------------- */
/*  int _counter = 0; */
  /* ---------------- FUNCTIONS ---------------- */
/*  void _incrementCounter() {
    setState(
      () {
        _counter++;
      },
    );
  }

*/

  /* ---------------- LAYOUT ---------------- */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(widget.title),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFF2A6387),
                ),
              ),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource("assets_note1.wav"),
                ); // will immediately start playing
              },
              child: const Text('Note1'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFF50AF9D),
                ),
              ),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource("assets_note1.wav"),
                ); // will immediately start playing
              },
              child: const Text('Note2'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFFFFCD00),
                ),
              ),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource("assets_note1.wav"),
                ); // will immediately start playing
              },
              child: const Text('Note3'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFFC8E9DE),
                ),
              ),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource("assets_note1.wav"),
                ); // will immediately start playing
              },
              child: const Text('Note4'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFF6ABCCF),
                ),
              ),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource("assets_note1.wav"),
                ); // will immediately start playing
              },
              child: const Text('Note5'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFF9A8447),
                ),
              ),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource("assets_note1.wav"),
                ); // will immediately start playing
              },
              child: const Text('Note6'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xFFF20C35),
                ),
              ),
              onPressed: () async {
                final player = AudioPlayer();
                await player.play(
                  AssetSource("assets_note1.wav"),
                ); // will immediately start playing
              },
              child: const Text('Note7'),
            ),
          ],
        ),
      ),
    );
  }
}

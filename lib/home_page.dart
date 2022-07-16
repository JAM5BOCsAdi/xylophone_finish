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
  Future<void> _playSound(int noteNumber) async {
    final player = AudioPlayer();
    await player.play(
      AssetSource("assets_note$noteNumber.wav"),
    );
  }
  /*
  *   Így néz ki simán, ha nincs használva a(z) "Async - Await" páros:
  *
  *       void _playSound(int noteNumber){
  *         ...
  *       }
  *
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF2A6387),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                onPressed: () {
                  _playSound(1);
                },
                child: const Text('Note1'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF50AF9D),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                onPressed: () {
                  _playSound(2);
                },
                child: const Text('Note2'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFFFFCD00),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                onPressed: () {
                  _playSound(3);
                },
                child: const Text('Note3'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFFC8E9DE),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                onPressed: () {
                  _playSound(4);
                },
                child: const Text('Note4'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF6ABCCF),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                onPressed: () {
                  _playSound(5);
                },
                child: const Text('Note5'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFF9A8447),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                onPressed: () {
                  _playSound(6);
                },
                child: const Text('Note6'),
              ),
            ),
            Expanded(
              child: ElevatedButton(
                style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xFFF20C35),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                ),
                onPressed: () {
                  _playSound(7);
                },
                child: const Text('Note7'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
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

  /* Custom function, where you can add the name to it as you want */
  Future<void> _greet(
      {required String personToGreet, required String greeting}) async {
    if (kDebugMode) {
      print("$greeting $personToGreet");
    }
  }

  int _add({required int n1, required int n2}) {
    int result = n1 + n2;
    if (kDebugMode) {
      print(result);
    }
    return result;
  }

  int _multiply({required int step1Result, required int multiplier}) {
    int result = step1Result * multiplier;
    if (kDebugMode) {
      print(result);
    }
    return result;
  }

  double _finalResult({required int step2Result, required int divider}) {
    double result = step2Result / divider;
    if (kDebugMode) {
      print(result);
    }
    return result;
  }

  /* Same as the RETURN type */
  Expanded _buildKey({required int noteColor, required int noteNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          shadowColor: MaterialStateProperty.all(Colors.transparent),
          backgroundColor: MaterialStateProperty.all(
            Color(noteColor),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
            ),
          ),
        ),
        onPressed: () {
          _playSound(noteNumber);
        },
        child: Text('Note$noteNumber'),
      ),
    );
  }

  /* ---------------- LAYOUT ---------------- */
  @override
  Widget build(BuildContext context) {
    /* Custom function calling, where you can add the name to it as you want */
    _greet(personToGreet: "Jackie", greeting: "How do you do");
    int step1Result = _add(n1: 5, n2: 9);
    int step2Result = _multiply(step1Result: step1Result, multiplier: 5);
    /* double finalResult = */
    _finalResult(step2Result: step2Result, divider: 3);

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
            _buildKey(noteColor: 0xFF2A6387, noteNumber: 1),
            _buildKey(noteColor: 0xFF50AF9D, noteNumber: 2),
            _buildKey(noteColor: 0xFFFFCD00, noteNumber: 3),
            _buildKey(noteColor: 0xFFC8E9DE, noteNumber: 4),
            _buildKey(noteColor: 0xFF6ABCCF, noteNumber: 5),
            _buildKey(noteColor: 0xFF9A8447, noteNumber: 6),
            _buildKey(noteColor: 0xFFF20C35, noteNumber: 7),
          ],
        ),
      ),
    );
  }
}

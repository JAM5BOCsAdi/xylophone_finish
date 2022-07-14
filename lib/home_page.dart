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
  int _counter = 0;
  /* ---------------- FUNCTIONS ---------------- */
  void _incrementCounter() {
    setState(
      () {
        _counter++;
      },
    );
  }

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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

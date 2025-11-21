import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red.shade800,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: (Colors.black),
      ),
      home: const MyHomePage(title: 'The Boys Music'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isPlaying = false;

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        centerTitle: true,
        title: Text(widget.title),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: null,
        notchMargin: 0.0,
        color: Colors.grey.shade700,
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_previous_rounded),
              iconSize: 35.0,
              color: Colors.white,
            ),
            IconButton(
              onPressed: _togglePlayPause,
              icon: Icon(
                _isPlaying
                    ? Icons.pause_circle_filled
                    : Icons.play_circle_filled,
              ),
              iconSize: 50.0,
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.skip_next_rounded),
              iconSize: 35.0,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

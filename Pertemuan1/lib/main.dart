import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Flutter 2',
      theme: ThemeData(
        primarySwatch: Colors.cyan ),
      home: const MyHomePage(title: 'Fanny Aplikasi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _counter = 16;
  var textSize = 20.0;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        backgroundColor: Color.fromARGB(255, 250, 255, 255),
        title: Text(widget.title, style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: TextStyle(fontSize: 10 + textSize))
              ]),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed:() {
          setState((){
            textSize = textSize + 2.0;
            _counter++;
          });
        },
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

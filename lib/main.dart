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
      title: 'MyApp',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: const MyFirstApp(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyFirstApp extends StatefulWidget {
  const MyFirstApp({super.key, required this.title});
    final String title;
     @override
  State<MyFirstApp> createState() => _MyFirstAppState();
}

class _MyFirstAppState extends State<MyFirstApp> {
  double _counter = 12;
    bool isVisible = true;
      String isName = 'ı̣ɹʇnԀ oʇuɐʎnS ʎuuɐℲ';
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _isVisible(){
    setState(() {
      isVisible = !isVisible;
      if(isVisible){
        isName = 'ı̣ɹʇnԀ oʇuɐʎnS ʎuuɐℲ'; 
      }else{
        isName = 'Fanny Suyanto Putri';
      }
    });
  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 231, 111, 211),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  const [
            Center(child: 
            Icon(Icons.android)
            ),
            Text('FannyApp'),
          ],
        ),
      ),

      floatingActionButton: SizedBox(
        height: 600,
        child: Center(
          child: FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            // ignore: sort_child_properties_last
            child: const Icon(Icons.add),
            backgroundColor: const Color.fromARGB(255, 231, 111, 211),
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 240,
            ),
            Text(
              'Ukuran Font Saat ini $_counter',
              style: TextStyle(fontSize:_counter,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(isName,style: const TextStyle(fontWeight: FontWeight.normal,fontFamily: 'Roboto'),),
                TextButton(
              onPressed: _isVisible,
              // ignore: sort_child_properties_last
              child: const Icon(Icons.swap_horiz),
              style: TextButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 231, 111, 211)
              ),
              ),
              ],              
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SelectableText(
                  'Portfolio under construnction............',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  child: Image(
                    image: AssetImage('assets/image/construction.png'),
                    height: MediaQuery.of(context).size.height * 0.4,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

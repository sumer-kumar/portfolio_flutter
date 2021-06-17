import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_section.dart';
import 'package:portfolio/widgets/navigation_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
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
    final mq = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(12, 0, 50, 1.0),
          ),
          width: double.infinity,
          child: Column(
            children: [
              NavigationBar(),
              Container(
                child: AboutSection(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

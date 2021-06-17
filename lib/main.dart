import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_section.dart';
import 'package:portfolio/widgets/contact_section.dart';
import 'package:portfolio/widgets/navigation_bar.dart';
import 'package:portfolio/widgets/skill_section.dart';
import 'package:url_launcher/url_launcher.dart';

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
  List<Color> colrs = [
    Colors.purple.shade900,
    Colors.purple.shade900,
    Colors.pink.shade900,
    Colors.red.shade900,
  ];

  final controller = ScrollController();
  void scrolltobottom() {
    if (controller.hasClients) {
      controller.animateTo(
        controller.position.maxScrollExtent,
        curve: Curves.ease,
        duration: Duration(seconds: 1),
      );
    }
  }

  final urls = [];
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        controller: controller,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colrs,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.topRight,
                child: TextButton(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: Colors.pink.shade100,
                      ),
                    ),
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Contact',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: scrolltobottom,
                ),
              ),
              AboutSection(),
              // SkillSection(),
              ContactSection(),
            ],
          ),
        ),
      ),
    );
  }
}

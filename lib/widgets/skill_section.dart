import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillSection extends StatefulWidget {
  SkillSection({Key? key}) : super(key: key);

  @override
  _SkillSectionState createState() => _SkillSectionState();
}

class _SkillSectionState extends State<SkillSection> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: mq.size.height * 0.3,
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/image/drawing.png',
                  ),
                  Text('Sketch Artist'),
                ],
              ),
            ),
          ),
          Container(
            height: mq.size.height * 0.3,
            child: Card(
              child: Column(
                children: [
                  Image.asset(
                    'assets/image/drawing.png',
                  ),
                  Text('Sketch Artist'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

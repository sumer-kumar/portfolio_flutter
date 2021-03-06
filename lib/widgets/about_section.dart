import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutSection extends StatefulWidget {
  AboutSection({Key? key}) : super(key: key);

  @override
  _AboutSectionState createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return Container(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: ResponsiveBuilder(
              builder:
                  (BuildContext context, SizingInformation sizingInformation) {
                return sizingInformation.isMobile || mq.size.width < 800
                    ? Column(
                        children: [
                          Container(
                            height: mq.size.height * 0.45,
                            width: double.infinity,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: DefaultTextStyle(
                                    style: TextStyle(
                                      fontSize: mq.textScaleFactor * 40,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'Sumer Kumar',
                                          speed: Duration(milliseconds: 200),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SelectableText(
                                  'I am',
                                  style: TextStyle(
                                    fontSize: mq.textScaleFactor * 30,
                                    color: Colors.pink.shade100,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: DefaultTextStyle(
                                    style: TextStyle(
                                      fontSize: mq.textScaleFactor * 20,
                                      color: Colors.white54,
                                    ),
                                    textAlign: TextAlign.center,
                                    child: AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'Android Developer',
                                          // curve: Curves.bounceInOut,
                                          speed: Duration(milliseconds: 100),
                                        ),
                                        TypewriterAnimatedText(
                                          'Web Developer',
                                          // curve: Curves.bounceInOut,
                                          speed: Duration(milliseconds: 100),
                                        ),
                                        TypewriterAnimatedText(
                                          'Desktop Application Developer',
                                          // curve: Curves.bounceInOut,
                                          speed: Duration(milliseconds: 100),
                                        ),
                                        TypewriterAnimatedText(
                                          'Sketch Artist',
                                          // curve: Curves.bounceInOut,
                                          speed: Duration(milliseconds: 100),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            'assets/image/developer.png',
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: mq.size.height * 0.8,
                            width: mq.size.height * 0.6,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: DefaultTextStyle(
                                    style: TextStyle(
                                      fontSize: mq.textScaleFactor * 60,
                                      color: Colors.white,
                                    ),
                                    textAlign: TextAlign.center,
                                    child: AnimatedTextKit(
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'Sumer\nKumar',
                                          speed: Duration(milliseconds: 200),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SelectableText(
                                  'I am',
                                  style: TextStyle(
                                    fontSize: mq.textScaleFactor * 30,
                                    color: Colors.pink.shade100,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: DefaultTextStyle(
                                    style: TextStyle(
                                      fontSize: mq.textScaleFactor * 20,
                                      color: Colors.white54,
                                    ),
                                    textAlign: TextAlign.center,
                                    child: AnimatedTextKit(
                                      repeatForever: true,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                          'Android Developer',
                                          // curve: Curves.bounceInOut,
                                          speed: Duration(milliseconds: 100),
                                        ),
                                        TypewriterAnimatedText(
                                          'Web Developer',
                                          // curve: Curves.bounceInOut,
                                          speed: Duration(milliseconds: 100),
                                        ),
                                        TypewriterAnimatedText(
                                          'Desktop Application Developer',
                                          // curve: Curves.bounceInOut,
                                          speed: Duration(milliseconds: 100),
                                        ),
                                        TypewriterAnimatedText(
                                          'Sketch Artist',
                                          // curve: Curves.bounceInOut,
                                          speed: Duration(milliseconds: 100),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Image.asset(
                              'assets/image/developer.png',
                            ),
                          ),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}

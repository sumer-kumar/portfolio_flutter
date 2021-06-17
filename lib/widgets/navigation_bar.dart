import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  Widget getButton(String text, Function onpressed) {
    return Container(
      alignment: Alignment.topLeft,
      child: TextButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        onPressed: () => onpressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    int flexValueForHome = 5;
    return Container(child: ResponsiveBuilder(
      //for large screen
      builder: (context, sizingInformation) {
        if (sizingInformation.isMobile) {
          flexValueForHome = 2;
        }
        return Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: flexValueForHome,
                    child: Container(
                      alignment: sizingInformation.isMobile
                          ? Alignment.center
                          : Alignment.topLeft,
                      child: TextButton(
                        child: Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                        onPressed: () => () {},
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: getButton('About', () {}),
                  ),
                  Expanded(
                    flex: 1,
                    child: getButton('Skills', () {}),
                  ),
                  Expanded(
                    flex: 1,
                    child: getButton('Contact', () {}),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    ));
  }
}

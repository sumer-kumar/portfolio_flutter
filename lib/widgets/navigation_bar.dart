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
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        onPressed: () => onpressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    return Container(child: ResponsiveBuilder(
      //for large screen
      builder: (context, sizingInformation) {
        if (1 == 1) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            width: double.infinity,
            child: Row(
              children: [
                Expanded(flex: 3, child: getButton('Home', () {})),
                Expanded(flex: 1, child: getButton('About', () {})),
                Expanded(flex: 1, child: getButton('Skills', () {})),
                Expanded(flex: 1, child: getButton('Contact', () {})),
              ],
            ),
          );
        }
        //for mobile screem
        return Container();
      },
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatefulWidget {
  @override
  _ContactSectionState createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  _launchURL(String _url) async {
    final url = _url;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      _launchURL("https://github.com/sumer-kumar/");
                    },
                    child: Container(
                      height: sizingInformation.isDesktop ||
                              sizingInformation.isTablet ||
                              sizingInformation.isMobile
                          ? 40
                          : mq.size.width * 0.17,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: Image.asset('assets/image/github.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL(
                          "https://www.facebook.com/profile.php?id=100007707705557");
                    },
                    child: Container(
                      height: sizingInformation.isDesktop ||
                              sizingInformation.isTablet ||
                              sizingInformation.isMobile
                          ? 40
                          : mq.size.width * 0.17,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: Image.asset('assets/image/facebook.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL(
                          'https://www.linkedin.com/in/sumer-kumar-b381681b8');
                    },
                    child: Container(
                      height: sizingInformation.isDesktop ||
                              sizingInformation.isTablet ||
                              sizingInformation.isMobile
                          ? 40
                          : mq.size.width * 0.17,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: Image.asset('assets/image/linkedin.png'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _launchURL(
                          "https://www.instagram.com/sumer_rajvansh/?r=nametag");
                    },
                    child: Container(
                      height: sizingInformation.isDesktop ||
                              sizingInformation.isTablet ||
                              sizingInformation.isMobile
                          ? 40
                          : mq.size.width * 0.17,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)),
                      child: Image.asset('assets/image/instagram.png'),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}

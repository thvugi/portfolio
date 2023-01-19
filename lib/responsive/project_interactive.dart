import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InteractiveProject extends StatefulWidget {
  final String imageString;
  final String title;
  final String description;
  final String urll;
  const InteractiveProject(
      this.imageString, this.title, this.description, this.urll);
  @override
  State<InteractiveProject> createState() => _InteractiveProjectState();
}

class _InteractiveProjectState extends State<InteractiveProject> {
  bool isHover = false;
  Offset mousePos = new Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onHover: (e) {
        setState(() {
          mousePos += e.delta;
          mousePos *= 0.12;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(40),
          child: GestureDetector(
            onTap: () {
              _launchURL(widget.urll);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                child: Stack(
                  children: [
                    backImage(widget.imageString),
                    gradient(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(widget.title,
                                style: TextStyle(
                                  color: Colors.white,
                                )))
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: text(widget.description),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

      ///
    );
  }

  backImage(String image) {
    return AnimatedPositioned(
      child: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(image), fit: BoxFit.fitHeight),
        ),
      ),
      duration: Duration(milliseconds: 1000),
      height: isHover ? 700 : 600,
      width: 500,
      curve: Curves.easeOutCubic,
    );
  }

  gradient() {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.easeOutCubic,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [
            Colors.black.withOpacity(isHover ? 0.8 : 0),
            Colors.transparent
          ])),
    );
  }

  text(String description) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeInOutCubic,
        child: Text(description,
            style:
                TextStyle(color: Colors.white.withOpacity(isHover ? 1.0 : 0))));
  }

  _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }
}

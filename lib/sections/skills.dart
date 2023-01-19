import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:lottie/lottie.dart';
import 'dart:html' as html;
import 'package:version_2/pages/project1.dart';

class MySkillsPage extends StatefulWidget {
  const MySkillsPage();
  @override
  State<MySkillsPage> createState() => _MySkillsPageState();
}

class _MySkillsPageState extends State<MySkillsPage>
    with TickerProviderStateMixin {
  bool isHover = false;
  bool isHovered = false;
  @override
  void initState() {
    super.initState();
  }

  hoverActivation(hoverState) {
    setState(() {
      isHover = hoverState;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.all(9),
          child: Text(
            'Skills',
            style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 2),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            icon("icons/PostColor.png", "Postgres"),
            icon("icons/MyColor.png", "MySQL"),
            icon("icons/AWSColor.png", "AWS"),
            icon("icons/PythonColor.png", "Python"),
            icon("icons/RColor.png", "R"),
            icon("icons/HadoopColor.png", "Hadoop"),
            icon("icons/KafkaColor.png", "Kafka"),
            icon("icons/SparkColor.png", "Spark"),
            icon("icons/AirflowColor.png", "Airflow"),
            icon("icons/MongoColor.png", "MongoDB"),
            icon("icons/TableauColor.png", "Tableau"),
            icon("icons/BIColor.png", "PowerBI"),
            icon("icons/CColor.png", "C++"),
            icon("icons/MatColor.png", "MATLAB"),
            icon("icons/JavaColor.png", "Java"),
            icon("icons/GithubColor.png", "GitHub"),
            icon("icons/GitColor.png", "Git"),
            icon("icons/VMColor.png", "VMWare"),
            icon("icons/SolidColor.png", "SolidWorks"),
            icon("icons/InventorColor.png", "Inventor"),
            icon("icons/AutoColor.png", "AutoCAD"),
            next(
                "https://assets8.lottiefiles.com/private_files/lf30_iawjpfko.json",
                "More Skills")
          ],
        )
      ],
    ));
  }

  next(String image1, String msg) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (e) {
          setState(() {
            isHovered = true;
          });
        },
        onHover: (e) {
          setState(() {});
        },
        onExit: (e) {
          setState(() {
            isHovered = false;
          });
        },
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const PageSkill(),
            ),
          ),
          child: Tooltip(
            message: msg,
            child: AnimatedContainer(
              child: Lottie.network(image1, animate: isHovered ? true : false),
              duration: Duration(milliseconds: 1000),
              curve: Curves.easeOutCubic,
              constraints: BoxConstraints.loose(Size(50, 50)),
            ),
          ),
        ),
      ),
    );
  }

  icon(String image1, String msg) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (e) {
              setState(() {
                hoverActivation(true);
              });
            },
            onExit: (e) {
              setState(() {
                hoverActivation(false);
              });
            },
            child: GestureDetector(
                onTap: () {
                  print(image1);
                },
                child: Tooltip(
                  message: msg,
                  child: AnimatedContainer(
                      duration: Duration(milliseconds: 1000),
                      curve: Curves.easeOutCubic,
                      constraints: BoxConstraints.loose(Size(50, 50)),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(image1),
                        ),
                      )),
                ))));
  }
}

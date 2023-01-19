// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:version_2/sections/about.dart';
import 'package:version_2/sections/contact.dart';
import 'package:version_2/sections/home.dart';
import 'package:version_2/sections/projects.dart';

///import 'package:version_2/sections/resume.dart';
import 'package:version_2/sections/skills.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 27, 42, 1),
      body: SingleChildScrollView(
          child: Column(
        children: [
          HomeSection(),
          AboutPage(),
          MySkillsPage(),
          ProjectsPage(),
          ContactPage()
        ],
      )),
    );
  }
}

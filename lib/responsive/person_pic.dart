import 'package:flutter/material.dart';

class PersonPic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, height: double.infinity,
      child: Image.asset("assets/person.png"),
    );
  }
}

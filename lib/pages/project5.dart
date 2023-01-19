import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(padding: const EdgeInsets.all(40),
      child: ClipRRect(borderRadius: BorderRadius.circular(10),
      child: Container(color: Colors.white,)))
    );
  }
}
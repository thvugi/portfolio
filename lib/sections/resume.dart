import 'package:flutter/material.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Column(
            children: [
              Text('Resume',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    height: 2,
                  )),
              Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  style: ButtonStyle(alignment: Alignment.bottomRight),
                  child: Text('Press Me'),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResumeFullPage(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class ResumeFullPage extends StatelessWidget {
  const ResumeFullPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: AspectRatio(
            aspectRatio: 9 / 16,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 9 / 16,
                  child: Container(color: Colors.green),
                ),
                AspectRatio(
                    aspectRatio: 9 / 16, child: Container(color: Colors.blue))
              ],
            )));
  }
}

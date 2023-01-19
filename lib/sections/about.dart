import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Column(
        children: [
          (Container(
            padding: EdgeInsets.fromLTRB(100, 20, 100, 0),
            child: Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_GzO3C7IclH.json'),
          )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('About',
                style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 2)),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8.0, 20, 100),
            child: Text(
              "I engineer solutions to problems presented to me regardless of the discipline which it resides in. I have experience in the Mechanical Engineering discipline, as well as Biology, Applied Mathematics, Big Data, and Software Development (mobile, game, web, engineering).\n\nMy diverse knowledge stems from my passion of learning and having a hardworking quality. When there is seriousness in the task at hand, I proceed with all of my efforts to try producing the best results. Because of my optimism and motivation, I finish the task despite a difficult situation. Hence, the reason why I can learn various things and produce solutions to any problem that is presented to me. When doing any work, I view it as a learning experience where I retrospectively look at the task and try to find ways to improve and gain skills to better performance or results. ",
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: Colors.white,
                height: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

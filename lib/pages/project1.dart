import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:url_launcher/url_launcher.dart';

class Category {
  final List<String> id;
  final String name;
  final String image;
  final String description;
  final String url;
  Category(
      {required this.id,
      required this.name,
      required this.image,
      required this.description,
      required this.url});

  @override
  List<Object?> get props => [id, name, image, description, url];
}

class PageSkill extends StatefulWidget {
  const PageSkill({Key? key}) : super(key: key);

  @override
  State<PageSkill> createState() => _PageSkillState();
}

class _PageSkillState extends State<PageSkill> {
  static List<Category> categories = [
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'https://vutg.io/'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
    Category(
        id: ['aws', 'python'],
        name: 'Twitter and Amazon ETL Project',
        image: 'etl.png',
        description: 'one sentence of info',
        url: 'vutg.io'),
  ];
  List<Category> display_list = List.from(categories);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: AspectRatio(
        aspectRatio: 4 / 3,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "More Coming Soon",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );

    /*Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemExtent: 75,
          itemCount: display_list.length,
          itemBuilder: (context, index) => ListTile(
            tileColor: Colors.amber,
            mouseCursor: SystemMouseCursors.click,
            onTap: () => _launchURL(display_list[index].url),
            title: Text(
              display_list[index].name,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    Text(
                      display_list[index].description,
                    ),
                  ],
                ),
              ],
            ),
            leading: Image(
              image: AssetImage(display_list[index].image),
            ),
          ),
        ),
      ),
    );*/
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

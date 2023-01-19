import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:version_2/firebase_options.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  CollectionReference users = FirebaseFirestore.instance.collection('messages');

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController subject = TextEditingController();
  TextEditingController body = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 8,
      child: Container(
        color: Color.fromARGB(255, 22, 95, 129),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.all(50),
                child: Text(
                  "----Say hi!",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(50, 0, 0, 50),
                child: Text(
                  "Connect with me",
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  child: Stack(
                    children: [
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            textBox(name, 'Name'),
                            textBox(subject, 'Subject'),
                            textBox(email, 'Email'),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: TextFormField(
                                style: TextStyle(color: Colors.white),
                                maxLines: 10,
                                keyboardType: TextInputType.multiline,
                                controller: body,
                                decoration: InputDecoration(
                                  hintText: 'Body',
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          _launchURL(
                                              'https://github.com/thvugi');
                                        },
                                        icon: const FaIcon(
                                            FontAwesomeIcons.github),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          _launchURL(
                                              'https://www.linkedin.com/in/vu-giang-75b666221/g');
                                        },
                                        icon: const FaIcon(
                                            FontAwesomeIcons.linkedin),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: ElevatedButton(
                                          onPressed: () async {
                                            DateTime datetime = DateTime.now();
                                            datetime = datetime.toUtc();
                                            await users.add({
                                              'name': name.text,
                                              'subject': subject.text,
                                              'email': email.text,
                                              'body': body.text,
                                              'time': datetime
                                            }).then((value) => {
                                                  name.clear(),
                                                  subject.clear(),
                                                  email.clear(),
                                                  body.clear()
                                                });
                                          },
                                          child: Text('Send'),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  textBox(TextEditingController name, String title) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: TextFormField(
        style: TextStyle(color: Colors.white),
        controller: name,
        decoration: InputDecoration(
          iconColor: Colors.white,
          hintText: title,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
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

import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  var index = 0;
  List<String> randomNames = [
    "Indra",
    "Thom",
    "Jerry",
    "Dimas",
    "Joko",
    "Didi",
    "Dodo",
    "Indra",
    "Thom",
    "Jerry",
    "Dimas",
    "Joko",
    "Didi",
    "Dodo",
    "Indra",
    "Thom",
    "Jerry",
    "Dimas",
    "Joko",
    "Didi",
    "Dodo",
    "Indra",
    "Thom",
    "Jerry",
    "Dimas",
    "Joko",
    "Didi",
    "Dodo",
  ];

  late String name;

  void changeName() {
    index++;
    setState(() {
      name = randomNames[index];
    });
    print('name: $name');
  }

  @override
  void initState() {
    name = randomNames[index];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build-> name: $name');
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => changeName(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 16,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/logo.png"),
              ),
              Container(
                color: Colors.yellow,
                child: Image.asset(
                  width: 100,
                  "assets/logo.png"
                ),
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange[900],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_batch_5/const/data.dart';
import 'package:flutter_batch_5/utils/extensions/context_extentions.dart';

class ProfileScreen extends StatefulWidget {

  final String name;

  const ProfileScreen({
    super.key,
    required this.name
  });

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  void changeName() {
    final index = footballPlayers.indexWhere((e) => e['name'] == widget.name);
    if(index > -1) {
      final newName = footballPlayers[index+1];
      context.pop(newName['name']);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 24
              ),
            ),
            FilledButton(
              onPressed: changeName, 
              child: Text("Ganti Nama")
            ),
            FilledButton.tonal(
              onPressed: () => context.pop(), 
              child: Text("Kembali")
            ),
          ],
        ),
      ),
    );
  }
}
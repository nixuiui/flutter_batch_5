import 'package:flutter/material.dart';
import 'package:flutter_batch_5/const/data.dart';
import 'package:flutter_batch_5/utils/extensions/context_extentions.dart';

class SettingScreen extends StatefulWidget {

  const SettingScreen({
    super.key,
  });

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  var name = '';

  void changeName() {
    final index = footballPlayers.indexWhere((e) => e['name'] == name);
    if(index > -1) {
      final newName = footballPlayers[index+1];
      context.pop(newName['name']);
    }
  }

  @override
  void didChangeDependencies() {
    final args = ModalRoute.of(context)?.settings.arguments;
    name = (args as String?) ?? '';
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
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
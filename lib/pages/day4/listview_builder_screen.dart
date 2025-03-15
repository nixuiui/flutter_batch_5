import 'package:flutter/material.dart';
import 'package:flutter_batch_5/const/data.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: footballPlayers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(
                footballPlayers[index]['name']![0],
                style: TextStyle(
                  color: Colors.white
                ),
              ),
            ),
            title: Text("${index+1}. ${footballPlayers[index]['name']!}"),
            subtitle: Text("${footballPlayers[index]['country']!} - ${footballPlayers[index]['club']!}"),
          );
        }
      ),
    );
  }
}
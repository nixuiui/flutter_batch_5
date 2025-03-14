import 'package:flutter/material.dart';
import 'package:flutter_batch_5/widgets/article_card_widget.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            subtitle: Text("Go to home page"),
            trailing: Icon(Icons.chevron_right_rounded),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Profile"),
            subtitle: Text("Open profile information"),
            trailing: Icon(Icons.chevron_right_rounded),
          ),
          SizedBox(
            height: 50,
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Click Me")
                ),
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Click Me")
                ),
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Click Me")
                ),
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Click Me")
                ),
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Click Me")
                ),
                FilledButton(
                  onPressed: () {}, 
                  child: Text("Click Me")
                ),
              ],
            ),
          ),
          ArticleCardWidget(),
          ArticleCardWidget(),
          ArticleCardWidget(),
          FilledButton(
            onPressed: () {}, 
            child: Text("Click Me")
          ),
          ArticleCardWidget(),
          ArticleCardWidget(),
          ArticleCardWidget(),
          FilledButton(
            onPressed: () {}, 
            child: Text("Click Me")
          ),
          ArticleCardWidget(),
          ArticleCardWidget(),
          ArticleCardWidget(),
        ],
      ),
    );
  }
}
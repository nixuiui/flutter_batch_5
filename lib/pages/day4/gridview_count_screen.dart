import 'package:flutter/material.dart';

class GridViewCountScreen extends StatefulWidget {
  const GridViewCountScreen({super.key});

  @override
  State<GridViewCountScreen> createState() => _GridViewCountScreenState();
}

class _GridViewCountScreenState extends State<GridViewCountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count Screen"),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        crossAxisCount: 4,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 2/3,
        children: [
          Center(
            child: IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.home)
            ),
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
          Container(
            color: Colors.brown,
          ),
          Container(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
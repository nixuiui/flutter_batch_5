import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Screen"),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 2/3
        ),
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
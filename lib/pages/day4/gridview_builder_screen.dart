import 'package:flutter/material.dart';
import 'package:flutter_batch_5/widgets/menu_grid_widget.dart';

class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({super.key});

  @override
  State<GridViewBuilderScreen> createState() => _GridViewBuilderScreenState();
}

class _GridViewBuilderScreenState extends State<GridViewBuilderScreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder Screen"),
      ),
      body: ListView(
        children: [
          MenuGridWidget(),
        ],
      ),
    );
  }
}
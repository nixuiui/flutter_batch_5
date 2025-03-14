import 'package:flutter/material.dart';

class ExpandedScreen extends StatefulWidget {
  const ExpandedScreen({super.key});

  @override
  State<ExpandedScreen> createState() => _ExpandedScreenState();
}

class _ExpandedScreenState extends State<ExpandedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expanded"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.green,
            ),
          ),
          SizedBox(
            height: 100,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 100,
                    color: Colors.orange,
                  ),
                ),
                Container(
                  height: 100,
                  width: 200,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          Flexible(
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
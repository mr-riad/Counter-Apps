import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late final int count;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter apps", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Column(
        children: [
          Text("")
        ],
      ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: () {
              count++;
            },
              child: Icon(Icons.remove),),
            FloatingActionButton(onPressed: () {
              count++;
            },
              child: Icon(Icons.add),)
          ],
        )

    );
  }
}



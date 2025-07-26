import 'package:flutter/material.dart';
import 'package:getx_project/counter_controller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final CounterController controller = CounterController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter apps", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            Text("${controller.count}"),
            ElevatedButton(onPressed: () {}, child: Text("Profile Page"))

          ],
        ),
      ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: () {
              controller.isDecrement();
              setState(() {

              });
              print("${controller.count}");
            },
              child: Icon(Icons.remove),),
            FloatingActionButton(onPressed: () {
              controller.isIncrement();
              setState(() {
                
              });
              print("${controller.count}");
            },
              child: Icon(Icons.add),)
          ],
        )

    );
  }
}



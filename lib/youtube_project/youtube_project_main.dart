import 'package:first_flutter_app/youtube_project/youtube_project_home.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Counter(),
    )
  );
}


class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  void increaseCount(){
    setState(() {
      count += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter = $count"),
        centerTitle: true,
      ),
      body: FilledButton(
          onPressed: increaseCount,
          child: const Text("Press here to increase the title number by one"),
        ),

    );
  }
}




class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.black,
      ),
      body: Column(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Container(
                width: 100,
                color: Colors.red,
                child: const Text("Red", textAlign: TextAlign.center,),
              ),
            ],
          ),

          Container(
            width: 200,
            color: Colors.green,
            child: const Text("Green",textAlign: TextAlign.center),
          ),
          Container(
            width: 300,
            color: Colors.blue,
            child: const Text("Blue",textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}



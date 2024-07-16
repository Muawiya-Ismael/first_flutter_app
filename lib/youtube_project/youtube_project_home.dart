import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("YouTube", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: const Home(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.fromLTRB(10, 40, 0 ,0 ),
      child:const Text("Video", style:
      TextStyle(
          color: Colors.white,
          fontSize: 20,
          letterSpacing: 2,
          fontStyle: FontStyle.italic
      ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Tutorial',
    theme: ThemeData(scaffoldBackgroundColor: Colors.black,),
    home: const HomeScreen(),
  );
}
}

class TutorialHome extends StatelessWidget {
  const TutorialHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const IconButton(
          icon: Icon(Icons.menu, color: Colors.white,),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title', style: TextStyle(color: Colors.white),),
        actions: const [
          IconButton(
            icon: Icon(Icons.search, color: Colors.white,),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),


      body: const Center(
        child:AnotherHomeTitle(),
      ),
      floatingActionButton: const FloatingActionButton(
        backgroundColor: Colors.grey,
        tooltip: 'Add', // used by assistive technologies
        onPressed: null,
        child: Icon(Icons.add, color: Colors.black,),
      ),
    );
  }
}

class AnotherHomeTitle extends StatelessWidget{
  const AnotherHomeTitle({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
          const Flexible(
            flex: 1,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text('Deliver features faster', textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                Expanded(
                  child: Text('Craft beautiful UIs', textAlign: TextAlign.center, style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                Expanded(
                  child: FittedBox(
                    child: FlutterLogo(),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.loose,
            child: Container(color: Colors.greenAccent,),
          ),
          Flexible(
            flex: 2,
            child: Container(color: Colors.cyan,),
          ),
          Flexible(
            flex: 2,
            child: Container(color: Colors.amberAccent,),
          )
        ],
      )
    );
  }
}

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.all(8.0),
          child:Text("Home", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
        ),
        centerTitle: true,
      ),
      body: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget{
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
             Row(
                      children: [
                        Text('Flutter', style: TextStyle(color: Colors.white, fontSize: 64, fontWeight: FontWeight.bold,),),
                        Expanded(child: FlutterLogo(),
                        )
                      ],
              
                ),
             Row(
               children: [
                Expanded(
                    child: Text("Press the Button", style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold,),)
                ),
                IconButton(
                  icon: Icon(Icons.flutter_dash, color: Colors.white,),
                  tooltip: 'Search',
                  onPressed: (){print("hello");},
                ),
              ],
            ),
              Row(
                children: [
                  Expanded(
                    child: Text("muawiya810@gmail.com",textAlign: TextAlign.center , style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}




/*
 Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded( // Allow Text to take available space
                child: Text('Hello, world!',
                  style: TextStyle(color: Colors.white, backgroundColor: Colors.grey,),


                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello, world!', style: TextStyle(color: Colors.white,),),
            ],
          )
*/
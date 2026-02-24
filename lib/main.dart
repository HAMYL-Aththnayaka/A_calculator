import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Calculator", style: TextStyle(color: Colors.blue)),
        centerTitle: true,
      ),
      backgroundColor:Colors.deepPurple[200],
      body:
       Column(
        children: [
          Expanded(
            child:Container(),
             ),
          Expanded(
            flex:2,
            child: Container(
              color:Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:calculator/buttons.dart';
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

  final List<String> buttons=[
    "C","DEL","%","/",
    "9","8","7","x",
    "6","5","4","-",
    "3","2","1","+",
    "0",".","ANS","=",
    
    
  ];

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
             child:Center(
            child:GridView.builder(
              itemCount:buttons.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
              itemBuilder: (BuildContext context , int index){
                if (index == 0){
                  return Mybutton(
                  buttonText:buttons[index],
                  color:Colors.green,
                  textColor:Colors.white,
                  );
                }else if(index == 1){
                   return Mybutton(
                  buttonText:buttons[index],
                  color:Colors.red,
                  textColor:Colors.white,
                  );
                }else{
                  return Mybutton(
                  buttonText:buttons[index],
                  color:isOperate(buttons[index])?Colors.deepPurple:Colors.deepPurple[50],
                  textColor:isOperate(buttons[index]) ?Colors.white:Colors.deepPurple
                  );
                }
              }
              ),
             ),
            ),
          ),
        ],
      ),
    );
  }
  bool isOperate(String x){
    if (x =="%" ||x =="/" ||x =="x" ||x =="*" ||x =="-" ||x =="+"|| x =="="  ){
      return true;
    }
    return false;
  }
}

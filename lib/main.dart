import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

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
void equalPressed() {
  try {
    if (userQuestion.isEmpty) return;

    String finalQuestion = userQuestion;

    finalQuestion = finalQuestion.replaceAll("x","*");

    ExpressionParser p = GrammarParser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      userAnswer = eval % 1 == 0
          ? eval.toInt().toString()
          : eval.toString();
    });
  } catch (e) {
    setState(() {
      userAnswer = "Error";
    });
  }
}

  var userQuestion = '';
  var userAnswer = "";

  final myTextStyle = TextStyle(fontSize: 20, color: Colors.black);

  final List<String> buttons = [
    "C",
    "DEL",
    "%",
    "/",
    "9",
    "8",
    "7",
    "x",
    "6",
    "5",
    "4",
    "-",
    "3",
    "2",
    "1",
    "+",
    "0",
    ".",
    "ANS",
    "=",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Calculator", style: TextStyle(color: Colors.blue)),
        centerTitle: true,
      ),
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(userQuestion, style: myTextStyle),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(userAnswer, style: myTextStyle),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Center(
                child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      //clearButton
                      return Mybutton(
                        buttonTapped: () {
                          setState(() {
                            userQuestion = "";
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.green,
                        textColor: Colors.white,
                      );

                      //delete button
                    } else if (index == 1) {
                      return Mybutton(
                        buttonTapped: () {
                          setState(() {
                            userQuestion = userQuestion.substring(
                              0,
                              userQuestion.length - 1,
                            );
                          });
                        },
                        buttonText: buttons[index],
                        color: const Color.fromARGB(255, 105, 15, 9),
                        textColor: Colors.white,
                      );

                      //equal button
                    } else if (index == buttons.length - 1) {
                      return Mybutton(
                        buttonTapped: () {
                            equalPressed();
                        },
                        buttonText: buttons[index],
                        color: Colors.deepPurple,
                        textColor: Colors.white,
                      );

                      //rest of the operations
                    } else {
                      return Mybutton(
                        buttonTapped: () {
                          setState(() {
                            userQuestion += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: isOperate(buttons[index])
                            ? Colors.deepPurple
                            : Colors.deepPurple[50],
                        textColor: isOperate(buttons[index])
                            ? Colors.white
                            : Colors.deepPurple,
                      );
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isOperate(String x) {
    if (x == "%" ||
        x == "/" ||
        x == "x" ||
        x == "*" ||
        x == "-" ||
        x == "+" ||
        x == "=") {
      return true;
    }
    return false;
  }


}

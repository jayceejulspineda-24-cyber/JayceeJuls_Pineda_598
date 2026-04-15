import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String title = 'Calculator';
  int counter = 0;
  TextEditingController number1 = TextEditingController();
  TextEditingController number2 = TextEditingController();
  double total = 0;

  @override
  void initState() {
    title = 'Calculator Homepage';
    number1.text = ' ';
    number2.text = ' ';
    super.initState();
    }

    void handleAddition(){
    setState(() {
    total = double.parse(number1.text) + double.parse(number2.text);
    });
  }
  void handleMultiplication() {
    setState(() {
      total = double.parse(number1.text) * double.parse(number2.text);
    });
  }
    void handleSubtraction() {
    setState(() {
      total = double.parse(number1.text) - double.parse(number2.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text(title)),
          SizedBox(height: 20),
          TextField(controller: number1),
          SizedBox(height: 10),
          TextField(controller: number2),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            handleAddition();
          }, child: Text('Add Number')),
          SizedBox(height: 10),
          ElevatedButton(onPressed: (){
            handleMultiplication();
          }, child: Text('Multiply')),
          SizedBox(height: 10),
                    ElevatedButton(onPressed: (){
            handleSubtraction();
          }, child: Text('Add Number'))
          ,SizedBox(height: 20),
          Text('Total: $total'),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'calculator_class.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  _AddDataFirestoreState createState() => _AddDataFirestoreState();
}

class _AddDataFirestoreState extends State<CalculatorScreen> {
  final numberController = TextEditingController();
  final numbersController = TextEditingController();
  String result = "0";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
         centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                TextFormField(
                  controller: numberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    prefixIconColor: Colors.red,
                    border: OutlineInputBorder(

                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    hintText: "Enter Number",
                    prefixIcon: Icon(Icons.numbers),
                  ),
                ),

                SizedBox(height: 20),
                TextFormField(
                  controller: numbersController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hoverColor: Colors.red,
                      prefixIconColor: Colors.red,
                      hintText: 'Enter another number',
                      prefixIcon: Icon(Icons.numbers),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 20),
                Center(
                    child: Text("$result",
                        style: TextStyle(fontSize: 20, color: Colors.red))),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          result = Calculator(
                                  a: int.parse(numberController.text),
                                  b: int.parse(numbersController.text))
                              .add()
                              .toString();
                        });
                      },
                      child: const Text(
                        'Add',
                        style: TextStyle(color: Colors.black, letterSpacing: 2),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          result = Calculator(
                              a: int.parse(numberController.text),
                              b: int.parse(numbersController.text))
                              .sub()
                              .toString();
                        });
                      },
                      child: const Text(
                        'Subtraction',
                        style: TextStyle(color: Colors.black, letterSpacing: 2),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          result = Calculator(
                              a: int.parse(numberController.text),
                              b: int.parse(numbersController.text))
                              .multi()
                              .toString();
                        });
                      },
                      child: const Text(
                        'Multiply',
                        style: TextStyle(color: Colors.black, letterSpacing: 2),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          result = Calculator(
                              a: int.parse(numberController.text),
                              b: int.parse(numbersController.text))
                              .div()
                              .toString();
                        });
                      },
                      child: const Text(
                        'Division',
                        style: TextStyle(color: Colors.black, letterSpacing: 2),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}

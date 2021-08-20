import 'package:flutter/material.dart';

//My imports
import 'package:web_flutter_development/ui/shared/custom_text_button.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Stateful Counter.',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Counter: $_counter',
                style: TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextButton(
                  text: 'Increment',
                  onPressed: () {
                    setState(() {
                      _counter++;
                    });
                  }),
              CustomTextButton(
                  text: 'Decrement',
                  onPressed: () {
                    setState(() {
                      _counter--;
                    });
                  }),
            ],
          ),
        ],
      ),
    );
  }
}

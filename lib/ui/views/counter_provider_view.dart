import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//My imports
import 'package:web_flutter_development/providers/counter_provider.dart';
import 'package:web_flutter_development/ui/shared/custom_text_button.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterProvider>(
        create: (_) => CounterProvider(), child: _CounterProviderViewBody());
  }
}

class _CounterProviderViewBody extends StatelessWidget {
  const _CounterProviderViewBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CounterProvider counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Provider Counter',
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'Counter: ${counterProvider.counter}',
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
                onPressed: () => counterProvider.increment()),
            CustomTextButton(
                text: 'Decrement',
                onPressed: () => counterProvider.decrement()),
          ],
        ),
      ],
    );
  }
}

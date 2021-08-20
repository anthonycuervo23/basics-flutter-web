import 'package:flutter/material.dart';

//My imports
import 'package:web_flutter_development/ui/shared/custom_text_button.dart';

class View404 extends StatelessWidget {
  const View404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Could not found page',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          CustomTextButton(
            text: 'Go Back',
            onPressed: () => Navigator.pushReplacementNamed(
              context,
              '/stateful',
            ),
          ),
        ],
      ),
    );
  }
}

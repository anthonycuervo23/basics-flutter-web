import 'package:flutter/material.dart';

//My imports
import 'package:web_flutter_development/locator.dart';
import 'package:web_flutter_development/routes/route_generator.dart';
import 'package:web_flutter_development/services/navigation_service.dart';
import 'package:web_flutter_development/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? CircularProgressIndicator(),
        );
      },
    );
  }
}

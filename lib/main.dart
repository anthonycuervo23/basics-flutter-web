import 'package:flutter/material.dart';

//My imports
import 'package:web_flutter_development/locator.dart';
import 'package:web_flutter_development/routes/router.dart';
import 'package:web_flutter_development/services/navigation_service.dart';
import 'package:web_flutter_development/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  Flurorouter.configRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: Flurorouter.router.generator,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? CircularProgressIndicator(),
        );
      },
    );
  }
}

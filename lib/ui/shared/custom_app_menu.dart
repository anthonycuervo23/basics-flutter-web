import 'package:flutter/material.dart';

//My imports
import 'package:web_flutter_development/locator.dart';
import 'package:web_flutter_development/services/navigation_service.dart';
import 'package:web_flutter_development/ui/shared/custom_text_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) =>
            (constraints.maxWidth > 520) ? _TableDesktopMenu() : _MobileMenu());
  }
}

class _TableDesktopMenu extends StatelessWidget {
  const _TableDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        width: double.infinity,
        child: Row(
          children: [
            CustomTextButton(
              text: 'Counter Stateful',
              //onPressed: () => Navigator.pushNamed(context, '/stateful'),
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/stateful'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomTextButton(
              text: 'Counter Provider',
              //onPressed: () => Navigator.pushNamed(context, '/provider'),
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/provider'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomTextButton(
              text: 'Another Page',
              //onPressed: () => Navigator.pushNamed(context, '/123'),
              onPressed: () => locator<NavigationService>().navigateTo('/123'),
              color: Colors.black,
            ),
          ],
        ));
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextButton(
              text: 'Counter Stateful',
              //onPressed: () => Navigator.pushNamed(context, '/stateful'),
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/stateful'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomTextButton(
              text: 'Counter Provider',
              //onPressed: () => Navigator.pushNamed(context, '/provider'),
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/provider'),
              color: Colors.black,
            ),
            SizedBox(
              width: 10.0,
            ),
            CustomTextButton(
              text: 'Another Page',
              //onPressed: () => Navigator.pushNamed(context, '/123'),
              onPressed: () => locator<NavigationService>().navigateTo('/123'),
              color: Colors.black,
            ),
          ],
        ));
  }
}

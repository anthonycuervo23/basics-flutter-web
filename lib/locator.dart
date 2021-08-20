import 'package:get_it/get_it.dart';

//My imports
import 'package:web_flutter_development/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}

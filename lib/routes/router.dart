import 'package:fluro/fluro.dart';

//My imports
import 'package:web_flutter_development/routes/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configRoutes() {
    router.define('/',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/stateful/:base',
        handler: counterHandler, transitionType: TransitionType.fadeIn);
    router.define('/provider',
        handler: counterProviderHandler, transitionType: TransitionType.fadeIn);
    router.notFoundHandler = pageNotFound;
  }
}

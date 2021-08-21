// Stateful Handler
import 'package:fluro/fluro.dart';
import 'package:web_flutter_development/ui/views/counter_provider_view.dart';
import 'package:web_flutter_development/ui/views/counter_view.dart';
import 'package:web_flutter_development/ui/views/view_404.dart';

final Handler counterHandler = Handler(handlerFunc: (context, params) {
  return CounterView(
    counter: params['base']?[0] ?? '0',
  );
});

// Provider Handler
final Handler counterProviderHandler = Handler(
    handlerFunc: (context, params) => CounterProviderView(
          query: params['q']?[0] ?? '0',
        ));

// 404 Handler
final Handler pageNotFound =
    Handler(handlerFunc: (context, params) => View404());

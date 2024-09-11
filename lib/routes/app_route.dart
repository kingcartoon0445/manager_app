import 'package:auto_route/auto_route.dart';

import '../screens/counter/counter_screen.dart';
import '../screens/home/home_screen.dart';

part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: CounterRoute.page, initial: true),
      ];
}

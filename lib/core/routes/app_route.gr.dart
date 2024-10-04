// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_route.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ConformBookingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ConformBookingScreen(),
      );
    },
    CounterRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CounterScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    InfomationCustomerRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const InfomationCustomerScreen(),
      );
    },
    ManagerCreateRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ManagerCreateScreen(),
      );
    },
    MenuTypeFoodRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MenuTypeFoodScreen(),
      );
    },
    NoMenuRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const NoMenuScreen(),
      );
    },
    OperationsRoute.name: (routeData) {
      final args = routeData.argsAs<OperationsRouteArgs>(
          orElse: () => const OperationsRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: OperationsScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [ConformBookingScreen]
class ConformBookingRoute extends PageRouteInfo<void> {
  const ConformBookingRoute({List<PageRouteInfo>? children})
      : super(
          ConformBookingRoute.name,
          initialChildren: children,
        );

  static const String name = 'ConformBookingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [CounterScreen]
class CounterRoute extends PageRouteInfo<void> {
  const CounterRoute({List<PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [InfomationCustomerScreen]
class InfomationCustomerRoute extends PageRouteInfo<void> {
  const InfomationCustomerRoute({List<PageRouteInfo>? children})
      : super(
          InfomationCustomerRoute.name,
          initialChildren: children,
        );

  static const String name = 'InfomationCustomerRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ManagerCreateScreen]
class ManagerCreateRoute extends PageRouteInfo<void> {
  const ManagerCreateRoute({List<PageRouteInfo>? children})
      : super(
          ManagerCreateRoute.name,
          initialChildren: children,
        );

  static const String name = 'ManagerCreateRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MenuTypeFoodScreen]
class MenuTypeFoodRoute extends PageRouteInfo<void> {
  const MenuTypeFoodRoute({List<PageRouteInfo>? children})
      : super(
          MenuTypeFoodRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuTypeFoodRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [NoMenuScreen]
class NoMenuRoute extends PageRouteInfo<void> {
  const NoMenuRoute({List<PageRouteInfo>? children})
      : super(
          NoMenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoMenuRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OperationsScreen]
class OperationsRoute extends PageRouteInfo<OperationsRouteArgs> {
  OperationsRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          OperationsRoute.name,
          args: OperationsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OperationsRoute';

  static const PageInfo<OperationsRouteArgs> page =
      PageInfo<OperationsRouteArgs>(name);
}

class OperationsRouteArgs {
  const OperationsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OperationsRouteArgs{key: $key}';
  }
}

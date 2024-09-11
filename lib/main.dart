import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

export 'package:manager_app/config/app_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manager_app/bloc/counter/counter_bloc.dart';
import 'config/app_config.dart';
import 'config/res/size_config.dart';
import 'routes/app_route.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
final _appRouter = AppRouter();
void main() {
  AppConfig.init(environment: 'dev'); // Khởi tạo cấu hình cho môi trường

  runApp(LayoutBuilder(builder: (context, constraints) {
    SizeConfig.instance
        .init(constraints: constraints, screenHeight: 812, screenWidth: 375);
    return const MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => CounterBloc()), // Đăng ký CounterBloc
        ],
        child: MaterialApp.router(
          routerConfig: _appRouter.config(
              navigatorObservers: () => [
                    routeObserver,
                    ...AutoRouterDelegate.defaultNavigatorObserversBuilder()
                  ]),
          debugShowCheckedModeBanner: false,
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
        ));
  }
}

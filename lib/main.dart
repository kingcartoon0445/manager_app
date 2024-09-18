import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

export 'package:manager_app/config/app_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manager_app/bloc/counter/counter_bloc.dart';
import 'package:manager_app/bloc/home/home_bloc.dart';
import 'config/app_config.dart';
import 'config/di.dart';
import 'config/res/size_config.dart';
import 'generated/codegen_loader.g.dart';
import 'routes/app_route.dart';
import 'services/language_service.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();
GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
final _appRouter = AppRouter();
void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  configureDependencies();
  AppConfig.init(environment: 'dev'); // Khởi tạo cấu hình cho môi trường

  runApp(LayoutBuilder(builder: (context, constraints) {
    SizeConfig.instance
        .init(constraints: constraints, screenHeight: 812, screenWidth: 375);
    return EasyLocalization(
        supportedLocales: supportedLocales,
        path: 'assets/lang',
        assetLoader: const CodegenLoader(),
        fallbackLocale: english,
        child: const MyApp());
  }));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    // ignore_for_file: avoid_print
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => CounterBloc()), // Đăng ký CounterBloc
          BlocProvider(create: (context) => HomeBloc()), // Đăng ký HomeBloc
        ],
        child: MaterialApp.router(
          theme: ThemeData(
              fontFamily: GoogleFonts.archivo().fontFamily,
              textTheme: const TextTheme()),
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

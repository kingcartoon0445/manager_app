export 'package:manager_app/config/app_config.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:manager_app/bloc/counter/counter_bloc.dart';
import 'package:manager_app/bloc/home/home_bloc.dart';
import 'package:manager_app/bloc/infomation_customer/infomation_customer_bloc.dart';
import 'package:manager_app/export_global.dart';
import 'bloc/menu_type/menu_type_bloc.dart';
import 'config/app_config.dart';
import 'config/di.dart';
import 'config/res/size_config.dart';
import 'database/database_export.dart';
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
    final dbHelper = DatabaseHelper();
    loadAllData(dbHelper);
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

  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => CounterBloc()), // Đăng ký CounterBloc
          BlocProvider(create: (context) => HomeBloc()), // Đăng ký HomeBloc
          BlocProvider(
              create: (context) =>
                  InfomationCustomerBloc()), // Đăng ký HomeBloc

          BlocProvider(create: (context) => MenuTypeBloc()), // Đăng ký HomeBloc
        ],
        child: MaterialApp.router(
          theme: ThemeData(
              fontFamily: GoogleFonts.archivo().fontFamily,
              textTheme: 
              const TextTheme(
                displayLarge:
                    TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                displayMedium:
                    TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
                displaySmall:
                    TextStyle(fontSize: 32, fontWeight: FontWeight.normal),
                headlineLarge:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                headlineMedium:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                headlineSmall:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                titleLarge:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                titleMedium:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                titleSmall:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                bodyLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                bodyMedium:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                bodySmall:
                    TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                labelLarge:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                labelMedium:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                labelSmall:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
            
              ),
         
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

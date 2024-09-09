import 'package:flutter/material.dart';

export 'package:manager_app/config/app_config.dart';
export 'package:manager_app/routes/route_names.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:manager_app/bloc/counter/counter_bloc.dart';
import 'config/app_config.dart'; 
import 'routes/app_routes.dart';
import 'routes/route_names.dart';

void main() {
  AppConfig.init(environment: 'dev');  // Khởi tạo cấu hình cho môi trường

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()), // Đăng ký CounterBloc
      ],
      child: MaterialApp(
        title: AppConfig.instance.appName,  // Sử dụng AppConfig
        initialRoute: RouteNames.home,      // Đặt route khởi đầu
        onGenerateRoute: AppRoutes.generateRoute, // Đăng ký hệ thống quản lý route
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:manager_app/screens/conform_booking/conform_booking.dart';
import 'package:manager_app/screens/infomation_customer/infomation_customer.dart';
import 'package:manager_app/screens/manager_create/manager_create.dart';
import 'package:manager_app/screens/menu_type_food/widget/no_menu.dart';

import '../../screens/counter/counter_screen.dart';
import '../../screens/database_screen/database_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/menu_type_food/menu_type_food.dart';

part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: CounterRoute.page,
        ),
        AutoRoute(
          page: InfomationCustomerRoute.page,
        ),
        AutoRoute(
          page: MenuTypeFoodRoute.page,
        ),
        AutoRoute(
          page: OperationsRoute.page,
        ),
        AutoRoute(
          page: ManagerCreateRoute.page,
        ),
        AutoRoute(
          page: ConformBookingRoute.page,
        ),
      ];
}

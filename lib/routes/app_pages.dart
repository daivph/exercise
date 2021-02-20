import 'package:get/route_manager.dart';
import 'package:homework/exercise5_widgets/exercise5_home.dart';
import 'package:homework/exercise5_widgets/exercise5_home_detail.dart';
import 'package:homework/routes/app_routes.dart';

import '../main.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => MyHomePage(),
    ),
    GetPage(
      name: Routes.EXERCISE5HOME,
      page: () => Exercise5Home(),
    ),
    GetPage(
      name: Routes.EXERCISE5DETAIL,
      page: () => Exercise5HomeDetail(),
    )
  ];
}

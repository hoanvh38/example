import 'package:basecodegetx/presentation/login_screen/login_screen.dart';
import 'package:basecodegetx/presentation/login_screen/binding/login_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    )
  ];
}

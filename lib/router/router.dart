import 'package:auto_route/auto_route.dart';
import 'package:web_app/views/about_page.dart';
import 'package:web_app/views/home_page.dart';

import '../views/default_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: DefaultScreen, path: '/', children: [
      AutoRoute(page: HomePage, path: "", initial: true),
      AutoRoute(page: AboutPage, path: "about")
    ]),
  ],
)
class $AppRouter {}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/create/page.dart';
import '../features/home/page.dart';

GoRouter router(BuildContext context) => GoRouter(
      initialLocation: Routes.home,
      routes: [
        GoRoute(
          path: Routes.home,
          builder: (context, state) {
            return const HomePage();
          },
        ),
        GoRoute(
          path: Routes.create,
          builder: (context, state) {
            return const CreatePage();
          },
        ),
      ],
    );

class Routes {
  static const String home = "/home";
  static const String create = "/create";
}

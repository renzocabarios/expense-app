import 'package:flutter/material.dart';

import 'di/index.dart';
import 'routes/index.dart';

void main() {
  resolveDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = router(context);
    return MaterialApp.router(
      routerConfig: appRouter,
    );
  }
}

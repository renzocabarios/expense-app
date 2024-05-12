import 'package:flutter/material.dart';

import 'routes/index.dart';

void main() {
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

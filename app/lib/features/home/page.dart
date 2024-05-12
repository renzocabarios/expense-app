import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/design.dart';
import '../../di/index.dart';
import '../../routes/index.dart';
import 'bloc/cubit.dart';
import 'ui/expense_list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<HomeCubit>(
        create: (_) {
          return getIt.get<HomeCubit>()..init();
        },
        child: const HomeView(),
      ),
      backgroundColor: Design.black600,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(Routes.create);
        },
        shape: const CircleBorder(),
        backgroundColor: Design.blue600,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return const ExpenseList();
    });
  }
}

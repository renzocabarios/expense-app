import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/design.dart';
import '../../routes/index.dart';
import 'ui/expense_card.dart';
import 'ui/overall_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomeView(),
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
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 35,
      ),
      children: const [
        OverallDetails(),
        SizedBox(
          height: 10,
        ),
        ExpenseCard(),
        SizedBox(
          height: 10,
        ),
        ExpenseCard(),
        SizedBox(
          height: 10,
        ),
        ExpenseCard(),
        SizedBox(
          height: 10,
        ),
        ExpenseCard(),
        SizedBox(
          height: 10,
        ),
        ExpenseCard(),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

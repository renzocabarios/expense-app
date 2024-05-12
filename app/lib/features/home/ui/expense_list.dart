import 'package:flutter/material.dart';

import '../bloc/cubit.dart';
import 'expense_card.dart';
import 'overall_details.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return ListView(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 35,
          ),
          children: [
            const OverallDetails(),
            ...state.expenses!.map(
              (e) => ExpenseCard(
                expense: e,
              ),
            ),
          ],
        );
      },
    );
  }
}

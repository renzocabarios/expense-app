import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wealth_weaver/data/models/index.dart';
import 'package:wealth_weaver/domain/repositories/index.dart';

part "./state.dart";

class HomeCubit extends Cubit<HomeState> {
  final ExpenseRepository expenseRepository;

  HomeCubit({
    required this.expenseRepository,
  }) : super(const HomeState());

  void init() async {
    final response = await expenseRepository.getAll();
    if (response.data!.data.isNotEmpty) {
      final amounts = response.data!.data.map((e) => e.amount);
      final total = amounts.reduce((value, element) {
        return value! + element!;
      });
      emit(state.copyWith(expenses: response.data!.data, total: total));
    }
  }
}

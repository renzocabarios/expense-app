part of "./cubit.dart";

class HomeState extends Equatable {
  final List<ExpenseModel>? expenses;
  final int? total;
  const HomeState({this.expenses = const [], this.total = 0});

  @override
  List<Object?> get props => [expenses, total];

  HomeState copyWith({
    List<ExpenseModel>? expenses,
    int? total,
  }) {
    return HomeState(
      expenses: expenses ?? this.expenses,
      total: total ?? this.total,
    );
  }
}

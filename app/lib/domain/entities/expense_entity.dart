import 'package:equatable/equatable.dart';

class ExpenseEntity extends Equatable {
  final String? id;
  final String? name;
  final int? amount;
  final String? createdAt;
  final String? updatedAt;
  final bool? deleted;

  const ExpenseEntity({
    this.id = "",
    this.name = "",
    this.amount = 0,
    this.createdAt = "",
    this.updatedAt = "",
    this.deleted = false,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        amount,
        createdAt,
        updatedAt,
        deleted,
      ];
}

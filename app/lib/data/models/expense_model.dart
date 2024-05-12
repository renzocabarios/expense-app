import '../../domain/entities/index.dart';

class ExpenseModel extends ExpenseEntity {
  const ExpenseModel({
    super.id = "",
    super.name = "",
    super.amount = 0,
    super.createdAt = "",
    super.updatedAt = "",
    super.deleted = false,
  }) : super();

  factory ExpenseModel.fromJson(Map<String, dynamic> map) {
    return ExpenseModel(
      id: map["_id"] ?? "",
      name: map["name"] ?? "",
      amount: map["amount"] ?? 0,
      createdAt: map["createdAt"] ?? "",
      updatedAt: map["updatedAt"] ?? "",
      deleted: map["deleted"] ?? false,
    );
  }

  bool get isEmpty => id == "";

  static const empty = ExpenseModel(
    id: "",
    name: "",
    amount: 0,
    createdAt: "",
    updatedAt: "",
    deleted: false,
  );
}

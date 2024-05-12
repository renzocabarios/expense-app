import '../../core/data_state.dart';
import '../../core/network.dart';
import '../../data/models/index.dart';

abstract class ExpenseRepository {
  Future<DataState<HttpResponse<ExpenseModel>>> getAll({
    int page = 1,
    int limit = 10,
    String filter = "{}",
    String populate = "",
  });

  Future<DataState<HttpResponse<ExpenseModel>>> create({
    required Map<String, dynamic> body,
  });

  Future<DataState<HttpResponse<ExpenseModel>>> update({
    required String id,
    required Map<String, dynamic> body,
  });

  Future<DataState<HttpResponse<ExpenseModel>>> delete({
    required String id,
  });
}

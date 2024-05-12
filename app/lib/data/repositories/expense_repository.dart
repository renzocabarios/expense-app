import '../../core/data_state.dart';
import '../../core/network.dart';
import '../../domain/repositories/index.dart';
import '../../domain/sources/index.dart';
import '../models/index.dart';

class ExpenseRepositoryImpl extends ExpenseRepository {
  final ExpenseSource expenseSource;

  ExpenseRepositoryImpl({required this.expenseSource});

  @override
  Future<DataState<HttpResponse<ExpenseModel>>> getAll({
    int page = 1,
    int limit = 10,
    String filter = "{}",
    String populate = "",
  }) async {
    try {
      final response = await expenseSource.getAll(
        page: page,
        limit: limit,
        filter: filter,
        populate: populate,
      );

      final List<ExpenseModel> data =
          response.data.map((e) => ExpenseModel.fromJson(e)).toList();

      return DataSuccess(
        HttpResponse<ExpenseModel>(
          data: data,
          message: response.message,
          status: response.status,
        ),
      );
    } catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<HttpResponse<ExpenseModel>>> create({
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await expenseSource.create(
        body: body,
      );

      final List<ExpenseModel> data =
          response.data.map((e) => ExpenseModel.fromJson(e)).toList();

      return DataSuccess(
        HttpResponse<ExpenseModel>(
          data: data,
          message: response.message,
          status: response.status,
        ),
      );
    } catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<HttpResponse<ExpenseModel>>> delete({
    required String id,
  }) async {
    try {
      final response = await expenseSource.delete(
        id: id,
      );

      final List<ExpenseModel> data =
          response.data.map((e) => ExpenseModel.fromJson(e)).toList();

      return DataSuccess(
        HttpResponse<ExpenseModel>(
          data: data,
          message: response.message,
          status: response.status,
        ),
      );
    } catch (e) {
      return DataFailed(e);
    }
  }

  @override
  Future<DataState<HttpResponse<ExpenseModel>>> update({
    required String id,
    required Map<String, dynamic> body,
  }) async {
    try {
      final response = await expenseSource.update(
        body: body,
        id: id,
      );

      final List<ExpenseModel> data =
          response.data.map((e) => ExpenseModel.fromJson(e)).toList();

      return DataSuccess(
        HttpResponse<ExpenseModel>(
          data: data,
          message: response.message,
          status: response.status,
        ),
      );
    } catch (e) {
      return DataFailed(e);
    }
  }
}

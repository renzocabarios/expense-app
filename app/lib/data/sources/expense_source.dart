import '../../core/network.dart';
import '../../domain/sources/index.dart';

class ExpenseSourceImpl implements ExpenseSource {
  final Network network;

  ExpenseSourceImpl({
    required this.network,
  });

  @override
  Future<HttpResponse> create({required Map<String, dynamic> body}) async {
    return await network.post('expenses', body);
  }

  @override
  Future<HttpResponse> delete({required String id}) async {
    return await network.delete('expenses/$id');
  }

  @override
  Future<HttpResponse> getAll({
    int page = 1,
    int limit = 10,
    String filter = "{}",
    String populate = "",
  }) async {
    return await network.get(
        'expenses?page=$page&limit=$limit&filter=$filter&populate=$populate');
  }

  @override
  Future<HttpResponse> update({
    required String id,
    required Map<String, dynamic> body,
  }) async {
    return await network.patch('expenses/$id', body);
  }
}

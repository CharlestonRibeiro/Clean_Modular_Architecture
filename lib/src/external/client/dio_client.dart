import 'package:arquitetura_limpa/src/data/sources/rest_client_interface.dart';
import 'package:arquitetura_limpa/src/external/errors/external_errors.dart';
import 'package:dio/dio.dart';

class DioClient implements IRestClient {
  final Dio _dio = Dio();

  BaseOptions options = BaseOptions(
    headers: {
      'Content-Type': 'application/json',
    },
  );

  @override
  Future getData({required String url}) async {
    try {
      final response = await _dio.get(url);
      return response.data;
    } on DioException catch (e) {
      throw DioConnectionError(e);
    } catch (e) {
      throw UnespecifiedExternalError(e);
    }
  }
}

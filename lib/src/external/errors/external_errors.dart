import 'package:arquitetura_limpa/src/core/errors/app_error_interface.dart';
import 'package:dio/dio.dart';

sealed class ExternalError implements AppError {}

final class UnespecifiedExternalError implements ExternalError {
  final Object error;

  UnespecifiedExternalError(this.error);

  @override
  String get message => 'Erro de conexão externa não especificado: $error';
}

final class DioConnectionError implements ExternalError {
  final DioException dioError;

  DioConnectionError(this.dioError);

  @override
  String get message => switch (dioError.type) {
        DioException.connectionTimeout => 'Timeout de conexão.',
        DioException.receiveTimeout => 'Timeout de recepção.',
        DioException.badResponse => statusMessage(dioError),
        _ => 'Erro do DIO não especificado.',
      };

  String statusMessage(DioException e) {
    final statusCode = e.response?.statusCode ?? -1;
    if (statusCode >= 100 && statusCode <= 199) {
      return 'Resposta informativa.';
    } else if (statusCode >= 300 && statusCode <= 399) {
      return 'Redirecionamento.';
    } else if (statusCode >= 400 && statusCode <= 499) {
      return 'Erro do cliente.';
    } else if (statusCode >= 500 && statusCode <= 599) {
      return 'Erro do servidor.';
    } else {
      return 'Código de status não reconhecido: $statusCode';
    }
  }
}


import 'package:http/http.dart' as http;

import '../api/auth_interceptor.dart';
import '../network/overview.dart';
import 'package:chopper/chopper.dart';


class ApiClient {
  ApiClient(
      {
        required String baseURL,
        String? Function()? apiKeyProvider,
        http.Client? httpClient,
      }
      ) : _baseURL = baseURL,
        _apiKeyProvider = apiKeyProvider ?? (() => null),
        _httpClient = httpClient;

  final String _baseURL;
  final String? Function() _apiKeyProvider;
  final http.Client? _httpClient;

  late final ChopperClient chopper = ChopperClient (
      baseUrl: Uri.parse(_baseURL),
      client: _httpClient,
      services: [ServiceInterface.create()],
      converter: const ModelConverter(),
      errorConverter: const ModelConverter(),
      interceptors:
      [
        apiKeyInterceptor(_apiKeyProvider),
        HttpLoggingInterceptor(),
      ]
  );

  ServiceInterface get school => chopper.getService<ServiceInterface>();
}


import 'package:http/http.dart' as http;

import '../network/overview.dart';
import 'overview.dart';
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
  services: [SchoolService.create()],
  converter: const ModelConverter(),
  errorConverter: const ModelConverter(),
  interceptors:
      [
        /*APIKeyInterceptor(_apiKeyProvider),*/
        HttpLoggingInterceptor(),
  ]
  );

  SchoolService get school => chopper.getService<SchoolService>();
}
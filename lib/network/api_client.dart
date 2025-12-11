import 'package:http/http.dart' as http;
import '../network/overview.dart';
import 'package:chopper/chopper.dart';
import 'package:oauth_chopper/oauth_chopper.dart' as oc;

class ApiClient {
  ApiClient(
      {
        required String baseURL,
        String? Function()? apiKeyProvider,
        http.Client? httpClient,
        oc.OAuthChopper? oauthChopper
      }
      ) : _baseURL = baseURL,
        _apiKeyProvider = apiKeyProvider ?? (() => null),
        _httpClient = httpClient,
        _oAuthChopper = oauthChopper;

  final String _baseURL;
  final String? Function() _apiKeyProvider;
  final http.Client? _httpClient;
  final oc.OAuthChopper? _oAuthChopper;

  late final ChopperClient chopper = ChopperClient (
      baseUrl: Uri.parse(_baseURL),
      client: _httpClient,
      services: [ServiceInterface.create()],
      converter: const ModelConverter(),
      errorConverter: const ModelConverter(),
      interceptors:
      [
        ApiKeyInterceptor(_apiKeyProvider),
        HttpLoggingInterceptor(),
        if (_oAuthChopper != null) _oAuthChopper.interceptor(),
      ]
  );

  ServiceInterface get school => chopper.getService<ServiceInterface>();
}


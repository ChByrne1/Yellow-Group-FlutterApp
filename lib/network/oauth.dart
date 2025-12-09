import 'package:chopper/chopper.dart';
import 'package:http/http.dart' as http;
import 'package:oauth_chopper/oauth_chopper.dart' as oc;
import '../models/overview.dart';
import 'overview.dart';


class OAuthApiClient {
  OAuthApiClient({
    required String baseUrl,
    required oc.OAuthChopper oauthChopper,
    http.Client? httpClient,
  }) : _baseUrl = baseUrl,
        _oauth = oauthChopper,
        _httpClient = httpClient;

  final String _baseUrl;
  final oc.OAuthChopper _oauth;
  final http.Client? _httpClient;

  late final ChopperClient chopper = ChopperClient(
    baseUrl: Uri.parse(_baseUrl),
    client: _httpClient,
    services: [
      ServiceInterface.create()
    ],
    converter: const ModelConverter(),
    errorConverter: const ModelConverter(),
    interceptors: [_oauth.interceptor(), HttpLoggingInterceptor()],
  );

  ServiceInterface get api => chopper.getService<ServiceInterface>();
}

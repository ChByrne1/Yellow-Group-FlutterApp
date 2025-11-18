import 'dart:async';
import 'package:chopper/chopper.dart';


class APIKeyInterceptor implements Interceptor {
  APIKeyInterceptor(this._getAPIKey);

  final String? Function() _getAPIKey;

  @override
  FutureOr<Response<BodyType>> intercept <BodyType>(Chain<BodyType> chain)
  {
    final apiKey = _getAPIKey();
    final req = (apiKey != null && apiKey.isNotEmpty)
    ? chain.request.copyWith(
      headers:
        {
          ...chain.request.headers,
          'ApiKey' : apiKey,
        },
    )
        : chain.request;

    return chain.proceed(req);

  }
}
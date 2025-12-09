import 'dart:async';

import 'package:chopper/chopper.dart';


//https://medium.com/@manjeetkushalmallick/interceptor-in-flutter-9f788f3c90f6
//https://stackoverflow.com/questions/68315016/how-to-use-http-interceptor-in-a-flutter-project
//https://pub.dev/documentation/chopper/latest/chopper/Interceptor-class.html


class ApiKeyInterceptor implements Interceptor {
  ApiKeyInterceptor(this._getApiKey);

  final String? Function() _getApiKey;

  @override
  FutureOr<Response<BodyType>> intercept<BodyType>(
      Chain<BodyType> chain,
      ) async {
    final apiKey = _getApiKey();
    final request = apiKey != null && apiKey.isNotEmpty
        ? applyHeader(
      chain.request,
      'ApiKey',
      apiKey,
      override: false,
    )
        : chain.request;

    return chain.proceed(request);
  }
}
/*
Request Function(Request request) apiKeyInterceptor(String? Function() getAPIKey) {
  return (Request request) {
    final apiKey = getAPIKey();
    if (apiKey != null && apiKey.isNotEmpty) {
      return request.copyWith(
        headers: {
          ...request.headers,
          'ApiKey': apiKey,
        },
      );
    }
    return request;
  };
}

 */
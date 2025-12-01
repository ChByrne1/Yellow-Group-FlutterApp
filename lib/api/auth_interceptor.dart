import 'dart:async';

import 'package:chopper/chopper.dart';




Request Function(Request) apiKeyInterceptor(String? Function() getAPIKey) {
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
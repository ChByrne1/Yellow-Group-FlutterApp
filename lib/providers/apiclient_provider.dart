// Provide the API client itself
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../network/overview.dart';
import 'oauth/chopper_provider.dart';
/*
final apiClientProvider = Provider<ApiClient>((ref) {
  final oauth = ref.watch(oauthChopperProvider);
  return ApiClient(
    //baseURL: 'http://10.65.187.153:5153',
    apiKeyProvider: () => 'your-api-key-somewhere-more-secure-than-here',
    oauthChopper: oauth,
  );
});
*/
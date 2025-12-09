import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logto_dart_sdk/logto_client.dart';
import 'package:http/http.dart' as http;

class AuthService extends ChangeNotifier {
  static final AuthService _instance = AuthService._internal();
  factory AuthService() => _instance;
  AuthService._internal();

  // Initialize Logto SDK
  late LogtoClient _logtoClient;
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  bool _isAuthenticated = false;
  bool _isLoading = true;
  Map<String, dynamic>? _userInfo;

  // Getters
  bool get isAuthenticated => _isAuthenticated;
  bool get isLoading => _isLoading;
  Map<String, dynamic>? get userInfo => _userInfo;

  /// Initialize the Logto client with your configuration
  /// Replace these values with your actual Logto configuration
  Future<void> initialize() async {
    try {
      print('🔵 AUTH: Starting initialization...');
      _isLoading = true;
      notifyListeners();

      print('🔵 AUTH: Creating LogtoConfig...');
      final logtoConfig = LogtoConfig(
        endpoint: 'https://eujcys.logto.app',
        appId: 'mls45d9zbmrv2lrl0ob3c',
      );

      print('🔵 AUTH: Creating LogtoClient...');
      _logtoClient = LogtoClient(
        config: logtoConfig,
        httpClient: http.Client(),
      );

      print('🔵 AUTH: Checking auth status...');
      await _checkAuthStatus();

      print('🔵 AUTH: Initialization complete!');
      _isLoading = false;
      notifyListeners();
    } catch (e) {
      print('🔴 AUTH ERROR: $e');
      debugPrint('Error initializing auth service: $e');
      _isLoading = false;
      notifyListeners();
    }
  }

  /// Check if the user is authenticated
  Future<void> _checkAuthStatus() async {
    try {
      _isAuthenticated = await _logtoClient.isAuthenticated;

      if (_isAuthenticated) {
        // Fetch user info if authenticated
        await _fetchUserInfo();
      }
    } catch (e) {
      debugPrint('Error checking auth status: $e');
      _isAuthenticated = false;
    }
  }

  /// Sign in with Logto
  /// redirectUri should be like: 'io.logto://callback'
  Future<bool> signIn() async {
    try {
      print('🟢 Starting sign in...');
      _isLoading = true;
      notifyListeners();

      const redirectUri = 'yellowgroupapp://auth/callback';

      print('🟢 Calling Logto signIn with URI: $redirectUri');

      // Start the sign-in process
      await _logtoClient.signIn(redirectUri);

      print('🟢 SignIn completed, checking auth status...');

      // Check if authentication was successful
      _isAuthenticated = await _logtoClient.isAuthenticated;

      print('🟢 isAuthenticated: $_isAuthenticated');

      if (_isAuthenticated) {
        print('🟢 Authenticated! Fetching user info...');
        // Fetch user information
        await _fetchUserInfo();

        _isLoading = false;
        notifyListeners();
        return true;
      }

      print('🔴 Authentication failed - not authenticated');
      _isLoading = false;
      notifyListeners();
      return false;
    } catch (e) {
      print('🔴 Error during sign in: $e');
      debugPrint('Error during sign in: $e');
      _isLoading = false;
      notifyListeners();
      return false;
    }
  }

  /// Fetch user information from Logto
  Future<void> _fetchUserInfo() async {
    try {
      final userInfo = await _logtoClient.getUserInfo();
      _userInfo = userInfo.toJson();
      notifyListeners();
    } catch (e) {
      debugPrint('Error fetching user info: $e');
    }
  }

  Future<void> signOut() async {
    try {
      const postLogoutRedirectUri = 'yellowgroupapp://auth/signout';

      _userInfo = null;
      _isAuthenticated = false;

      notifyListeners();
    } catch (e) {
      debugPrint('Error during sign out: $e');
    }
  }

  /// Get the current access token
  Future<String?> getValidAccessToken() async {
    try {
      if (!_isAuthenticated) {
        return null;
      }

      final accessToken = await _logtoClient.getAccessToken();
      return accessToken?.token;
    } catch (e) {
      debugPrint('Error getting access token: $e');
      return null;
    }
  }

  /// Get ID token claims
  Future<Map<String, dynamic>?> getIdTokenClaims() async {
    try {
      final claims = await _logtoClient.idTokenClaims;
      return claims?.toJson();
    } catch (e) {
      debugPrint('Error getting ID token claims: $e');
      return null;
    }
  }
}
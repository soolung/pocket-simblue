import 'package:shared_preferences/shared_preferences.dart';

import '../models/token.dart';

class TokenManagerProvider {
  TokenManager manager = DefaultTokenManager();

  TokenManagerProvider._();

  static final instance = TokenManagerProvider._();
}

abstract class TokenManager {
  Future<void> setToken(Token token);

  Future<Token?> getToken();

  Future<void> clear();
}

class DefaultTokenManager implements TokenManager {
  static const accessToken = "access-token";
  static const refreshToken = "refresh-token";

  static final _instance = DefaultTokenManager._();

  SharedPreferences? _preferences;

  Token? _currentToken;

  DefaultTokenManager._();

  factory DefaultTokenManager() {
    return _instance;
  }

  @override
  Future<void> clear() async {
    _currentToken = null;
    _preferences ??= await SharedPreferences.getInstance();
    await _preferences!.remove(accessToken);
    await _preferences!.remove(refreshToken);
  }

  @override
  Future<void> setToken(Token token) async {
    _preferences ??= await SharedPreferences.getInstance();
    await _preferences!.setString(accessToken, token.accessToken);
    await _preferences!.setString(refreshToken, token.refreshToken);
    _currentToken = token;
  }

  @override
  Future<Token?> getToken() async {
    if (_currentToken != null) {
      return _currentToken;
    }

    _preferences ??= await SharedPreferences.getInstance();
    var savedAccessToken = _preferences!.getString(accessToken);
    var savedRefreshToken = _preferences!.getString(refreshToken);

    if (savedAccessToken != null && savedRefreshToken != null) {
      _currentToken =
          Token(accessToken: savedAccessToken, refreshToken: savedRefreshToken);
    }

    return _currentToken;
  }
}

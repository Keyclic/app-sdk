//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api_platform/api.dart';
import 'package:test/test.dart';

/// tests for AuthApi
void main() {
  // final instance = AuthApi();

  group('tests for AuthApi', () {
    // Creates a Profile resource.
    //
    // Creates a Profile resource.
    //
    //Future<ProfileJsonhalAuthProfileRead> postAuthProfile(String xKeyclicApp, ProfileProfileInput profileProfileInput, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postAuthProfile', () async {});

    // Retrieve an access token and ID token.
    //
    // Retrieve an access token and ID token.
    //
    //Future<PostAuthToken200Response> postAuthToken(String xKeyclicApp, PostAuthTokenRequest postAuthTokenRequest, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postAuthToken', () async {});

    // Refresh access and refresh tokens using a valid refresh token.
    //
    // Exchange a valid refresh token for a new access token and refresh token.
    //
    //Future<PostAuthToken200Response> postRefreshToken(String xKeyclicApp, PostRefreshTokenRequest postRefreshTokenRequest, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postRefreshToken', () async {});

    // Revoke a refresh token (logout).
    //
    // Invalidate a refresh token to prevent further usage.
    //
    //Future<PostRevoke200Response> postRevoke(String xKeyclicApp, PostRefreshTokenRequest postRefreshTokenRequest, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postRevoke', () async {});
  });
}

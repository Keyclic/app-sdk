# keyclic_sdk_api_platform.api.AuthApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postAuthProfile**](AuthApi.md#postauthprofile) | **POST** /auth/profile | Creates a Profile resource.
[**postAuthToken**](AuthApi.md#postauthtoken) | **POST** /auth/token | Retrieve an access token and ID token.
[**postRefreshToken**](AuthApi.md#postrefreshtoken) | **POST** /auth/token/refresh | Refresh access and refresh tokens using a valid refresh token.
[**postRevoke**](AuthApi.md#postrevoke) | **POST** /auth/token/revoke | Revoke a refresh token (logout).


# **postAuthProfile**
> ProfileJsonhalAuthProfileRead postAuthProfile(xKeyclicApp, profileProfileInput, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Creates a Profile resource.

Creates a Profile resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final profileProfileInput = ProfileProfileInput(); // ProfileProfileInput | The new Profile resource
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postAuthProfile(xKeyclicApp, profileProfileInput, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->postAuthProfile: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **profileProfileInput** | [**ProfileProfileInput**](ProfileProfileInput.md)| The new Profile resource | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**ProfileJsonhalAuthProfileRead**](ProfileJsonhalAuthProfileRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAuthToken**
> PostAuthToken200Response postAuthToken(xKeyclicApp, postAuthTokenRequest, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve an access token and ID token.

Retrieve an access token and ID token.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final postAuthTokenRequest = PostAuthTokenRequest(); // PostAuthTokenRequest | Retrieve an access token and ID token.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postAuthToken(xKeyclicApp, postAuthTokenRequest, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->postAuthToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **postAuthTokenRequest** | [**PostAuthTokenRequest**](PostAuthTokenRequest.md)| Retrieve an access token and ID token. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**PostAuthToken200Response**](PostAuthToken200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postRefreshToken**
> PostAuthToken200Response postRefreshToken(xKeyclicApp, postRefreshTokenRequest, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Refresh access and refresh tokens using a valid refresh token.

Exchange a valid refresh token for a new access token and refresh token.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final postRefreshTokenRequest = PostRefreshTokenRequest(); // PostRefreshTokenRequest | Exchange a valid refresh token for a new access token and refresh token.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postRefreshToken(xKeyclicApp, postRefreshTokenRequest, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->postRefreshToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **postRefreshTokenRequest** | [**PostRefreshTokenRequest**](PostRefreshTokenRequest.md)| Exchange a valid refresh token for a new access token and refresh token. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**PostAuthToken200Response**](PostAuthToken200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postRevoke**
> PostRevoke200Response postRevoke(xKeyclicApp, postRefreshTokenRequest, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Revoke a refresh token (logout).

Invalidate a refresh token to prevent further usage.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = AuthApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final postRefreshTokenRequest = PostRefreshTokenRequest(); // PostRefreshTokenRequest | Invalidate a refresh token to prevent further usage.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.postRevoke(xKeyclicApp, postRefreshTokenRequest, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling AuthApi->postRevoke: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **postRefreshTokenRequest** | [**PostRefreshTokenRequest**](PostRefreshTokenRequest.md)| Invalidate a refresh token to prevent further usage. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**PostRevoke200Response**](PostRevoke200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


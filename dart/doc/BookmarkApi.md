# keyclic_sdk_api.api.BookmarkApi

## Load the API package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetBookmarks**](BookmarkApi.md#cgetbookmarks) | **GET** /bookmarks | Retrieve all Bookmark resources.
[**deleteBookmark**](BookmarkApi.md#deletebookmark) | **DELETE** /bookmarks/{bookmark} | Remove one Bookmark resource.
[**getBookmark**](BookmarkApi.md#getbookmark) | **GET** /bookmarks/{bookmark} | Retrieve one Bookmark resource.
[**postBookmark**](BookmarkApi.md#postbookmark) | **POST** /bookmarks | Create one Bookmark resource.


# **cgetBookmarks**
> BookmarkPagination cgetBookmarks(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, organization, organizationsLeftSquareBracketRightSquareBracket, page, limit)

Retrieve all Bookmark resources.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = BookmarkApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 
final orderLeftSquareBracketRightSquareBracket = []; // List<String> | 
final after = 2013-10-20T19:20:30+01:00; // DateTime | 
final before = 2013-10-20T19:20:30+01:00; // DateTime | 
final organization = organization_example; // String | 
final organizationsLeftSquareBracketRightSquareBracket = []; // List<String> | 
final page = 56; // int | Page of the overview.
final limit = 56; // int | Page of the overview.

try { 
    final result = api_instance.cgetBookmarks(xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion, orderLeftSquareBracketRightSquareBracket, after, before, organization, organizationsLeftSquareBracketRightSquareBracket, page, limit);
    print(result);
} catch (e) {
    print('Exception when calling BookmarkApi->cgetBookmarks: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **orderLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **after** | **DateTime**|  | [optional] 
 **before** | **DateTime**|  | [optional] 
 **organization** | **String**|  | [optional] 
 **organizationsLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **page** | **int**| Page of the overview. | [optional] [default to 1]
 **limit** | **int**| Page of the overview. | [optional] [default to 10]

### Return type

[**BookmarkPagination**](BookmarkPagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBookmark**
> deleteBookmark(xKeyclicApp, bookmark, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Remove one Bookmark resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = BookmarkApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final bookmark = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    api_instance.deleteBookmark(xKeyclicApp, bookmark, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
} catch (e) {
    print('Exception when calling BookmarkApi->deleteBookmark: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **bookmark** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBookmark**
> Bookmark getBookmark(xKeyclicApp, bookmark, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieve one Bookmark resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = BookmarkApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final bookmark = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | The identifier of the resource.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.getBookmark(xKeyclicApp, bookmark, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling BookmarkApi->getBookmark: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **bookmark** | **String**| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Bookmark**](Bookmark.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postBookmark**
> Bookmark postBookmark(xKeyclicApp, bookmarkData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Create one Bookmark resource.

### Example 
```dart
import 'package:keyclic_sdk_api/api.dart';
// TODO Configure API key authorization: bearer
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('bearer').apiKeyPrefix = 'Bearer';

final api_instance = BookmarkApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final bookmarkData = BookmarkData(); // BookmarkData | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try { 
    final result = api_instance.postBookmark(xKeyclicApp, bookmarkData, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling BookmarkApi->postBookmark: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to 'com.keyclic.app']
 **bookmarkData** | [**BookmarkData**](BookmarkData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'fr-FR']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Bookmark**](Bookmark.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


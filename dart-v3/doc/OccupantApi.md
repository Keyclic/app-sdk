# keyclic_sdk_api_platform.api.OccupantApi

## Load the API package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getOccupant**](OccupantApi.md#getoccupant) | **GET** /occupants/{identifier} | Retrieves a Occupant resource.
[**getOccupantCollection**](OccupantApi.md#getoccupantcollection) | **GET** /occupants | Retrieves the collection of Occupant resources.


# **getOccupant**
> OccupantJsonhalRead getOccupant(identifier, xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves a Occupant resource.

Retrieves a Occupant resource.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = OccupantApi();
final identifier = identifier_example; // String | Occupant identifier
final xKeyclicApp = xKeyclicApp_example; // String | 
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getOccupant(identifier, xKeyclicApp, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling OccupantApi->getOccupant: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **identifier** | **String**| Occupant identifier | 
 **xKeyclicApp** | **String**|  | 
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**OccupantJsonhalRead**](OccupantJsonhalRead.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOccupantCollection**
> GetOccupantCollection200Response getOccupantCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, asset, assetLeftSquareBracketRightSquareBracket, member, memberLeftSquareBracketRightSquareBracket, memberPeriodPerson, memberPeriodPersonLeftSquareBracketRightSquareBracket, treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion)

Retrieves the collection of Occupant resources.

Retrieves the collection of Occupant resources.

### Example
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
// TODO Configure API key authorization: apiKey
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKey').apiKeyPrefix = 'Bearer';

final api_instance = OccupantApi();
final xKeyclicApp = xKeyclicApp_example; // String | 
final xOrganizationId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final page = 56; // int | The collection page number
final limit = 56; // int | The number of items per page
final pagination = true; // bool | Enable or disable pagination
final search = search_example; // String | 
final asset = asset_example; // String | 
final assetLeftSquareBracketRightSquareBracket = []; // List<String> | 
final member = member_example; // String | 
final memberLeftSquareBracketRightSquareBracket = []; // List<String> | 
final memberPeriodPerson = memberPeriodPerson_example; // String | 
final memberPeriodPersonLeftSquareBracketRightSquareBracket = []; // List<String> | 
final treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket = []; // List<String> | Filter on the ancestors of a node, all the nodes along the path from that node to the root of the tree.
final treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket = []; // List<String> | Filter on the tree below the node excluding the node itself.
final treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket = []; // List<String> | Filter on the node only.
final treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket = []; // List<String> | Filter on the tree below the node including the node itself.
final acceptLanguage = acceptLanguage_example; // String | 
final xDateTime = 2013-10-20T19:20:30+01:00; // DateTime | 
final xKeyclicAppPlatform = xKeyclicAppPlatform_example; // String | 
final xKeyclicAppVersion = xKeyclicAppVersion_example; // String | 

try {
    final result = api_instance.getOccupantCollection(xKeyclicApp, xOrganizationId, page, limit, pagination, search, asset, assetLeftSquareBracketRightSquareBracket, member, memberLeftSquareBracketRightSquareBracket, memberPeriodPerson, memberPeriodPersonLeftSquareBracketRightSquareBracket, treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket, treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket, acceptLanguage, xDateTime, xKeyclicAppPlatform, xKeyclicAppVersion);
    print(result);
} catch (e) {
    print('Exception when calling OccupantApi->getOccupantCollection: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | 
 **xOrganizationId** | **String**|  | 
 **page** | **int**| The collection page number | [optional] [default to 1]
 **limit** | **int**| The number of items per page | [optional] [default to 10]
 **pagination** | **bool**| Enable or disable pagination | [optional] 
 **search** | **String**|  | [optional] 
 **asset** | **String**|  | [optional] 
 **assetLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **member** | **String**|  | [optional] 
 **memberLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **memberPeriodPerson** | **String**|  | [optional] 
 **memberPeriodPersonLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)|  | [optional] [default to const []]
 **treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Filter on the ancestors of a node, all the nodes along the path from that node to the root of the tree. | [optional] [default to const []]
 **treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Filter on the tree below the node excluding the node itself. | [optional] [default to const []]
 **treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Filter on the node only. | [optional] [default to const []]
 **treeLeftSquareBracketAssetRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket** | [**List<String>**](String.md)| Filter on the tree below the node including the node itself. | [optional] [default to const []]
 **acceptLanguage** | **String**|  | [optional] [default to 'en-US']
 **xDateTime** | **DateTime**|  | [optional] 
 **xKeyclicAppPlatform** | **String**|  | [optional] 
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**GetOccupantCollection200Response**](GetOccupantCollection200Response.md)

### Authorization

[apiKey](../README.md#apiKey)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/hal+json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# @KeyclicSdkJavascript.PlaceApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cgetPlaces**](PlaceApi.md#cgetPlaces) | **GET** /places | Retrieve all Place resources.
[**cgetPlacesByOrganization**](PlaceApi.md#cgetPlacesByOrganization) | **GET** /organizations/{organization}/places | Retrieve all Place resources.
[**getPlace**](PlaceApi.md#getPlace) | **GET** /places/{place} | Retrieve one Place resource.
[**patchPlace**](PlaceApi.md#patchPlace) | **PATCH** /places/{place} | Edit one Place resource.
[**postPlaceByOrganization**](PlaceApi.md#postPlaceByOrganization) | **POST** /organizations/{organization}/places | Create one Place resource.


<a name="cgetPlaces"></a>
# **cgetPlaces**
> PlacePagination cgetPlaces(xKeyclicApp, , opts)

Retrieve all Place resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.PlaceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'businessActivity': "businessActivity_example", // String | The identifier of the resource.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoElevation': "geoElevation_example", // String | 
  'geoHash': "geoHash_example", // String | 
  'geoPoint': "geoPoint_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'geoCoordinates': "geoCoordinates_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'order': "desc", // String | 
  'organization': "organization_example", // String | The identifier of the resource.
  'parent': "parent_example", // String | The identifier of the resource.
  'parents': "parents_example", // String | The identifier of the resource.
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetPlaces(xKeyclicApp, , opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **geoElevation** | **String**|  | [optional] 
 **geoHash** | **String**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **organization** | [**String**](.md)| The identifier of the resource. | [optional] 
 **parent** | [**String**](.md)| The identifier of the resource. | [optional] 
 **parents** | [**String**](.md)| The identifier of the resource. | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**PlacePagination**](PlacePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="cgetPlacesByOrganization"></a>
# **cgetPlacesByOrganization**
> PlacePagination cgetPlacesByOrganization(xKeyclicApp, organization, opts)

Retrieve all Place resources.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.PlaceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
  'businessActivity': "businessActivity_example", // String | The identifier of the resource.
  'after': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'before': new Date("2013-10-20T19:20:30+01:00"), // Date | 
  'geoElevation': "geoElevation_example", // String | 
  'geoHash': "geoHash_example", // String | 
  'geoPoint': "geoPoint_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'geoCoordinates': "geoCoordinates_example", // String | One latitude and one longitude serialized and separated by a plus or a minus sign.
  'order': "desc", // String | 
  'parent': "parent_example", // String | The identifier of the resource.
  'parents': "parents_example", // String | The identifier of the resource.
  'query': "query_example", // String | 
  'page': 1, // Number | Page of the overview.
  'limit': 10 // Number | Page of the overview.
};

apiInstance.cgetPlacesByOrganization(xKeyclicApp, organization, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 
 **businessActivity** | [**String**](.md)| The identifier of the resource. | [optional] 
 **after** | **Date**|  | [optional] 
 **before** | **Date**|  | [optional] 
 **geoElevation** | **String**|  | [optional] 
 **geoHash** | **String**|  | [optional] 
 **geoPoint** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **geoCoordinates** | **String**| One latitude and one longitude serialized and separated by a plus or a minus sign. | [optional] 
 **order** | **String**|  | [optional] [default to desc]
 **parent** | [**String**](.md)| The identifier of the resource. | [optional] 
 **parents** | [**String**](.md)| The identifier of the resource. | [optional] 
 **query** | **String**|  | [optional] 
 **page** | **Number**| Page of the overview. | [optional] [default to 1]
 **limit** | **Number**| Page of the overview. | [optional] [default to 10]

### Return type

[**PlacePagination**](PlacePagination.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="getPlace"></a>
# **getPlace**
> Place getPlace(xKeyclicApp, place, opts)

Retrieve one Place resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.PlaceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let place = "place_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.getPlace(xKeyclicApp, place, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **place** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Place**](Place.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="patchPlace"></a>
# **patchPlace**
> Place patchPlace(xKeyclicApp, placePatch, place, opts)

Edit one Place resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.PlaceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let placePatch = new @KeyclicSdkJavascript.PlacePatch(); // PlacePatch | 

let place = "place_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.patchPlace(xKeyclicApp, placePatch, place, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **placePatch** | [**PlacePatch**](PlacePatch.md)|  | 
 **place** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Place**](Place.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

<a name="postPlaceByOrganization"></a>
# **postPlaceByOrganization**
> Place postPlaceByOrganization(xKeyclicApp, placeData, organization, opts)

Create one Place resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';
let defaultClient = @KeyclicSdkJavascript.ApiClient.default;

// Configure API key authorization: bearer
let bearer = defaultClient.authentications['bearer'];
bearer.apiKey = 'YOUR API KEY';
// Uncomment the following line to set a prefix for the API key, e.g. "Token" (defaults to null)
//bearer.apiKeyPrefix = 'Token';

let apiInstance = new @KeyclicSdkJavascript.PlaceApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let placeData = new @KeyclicSdkJavascript.PlaceData(); // PlaceData | 

let organization = "organization_example"; // String | The identifier of the resource.

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postPlaceByOrganization(xKeyclicApp, placeData, organization, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xKeyclicApp** | **String**|  | [default to com.keyclic.app]
 **placeData** | [**PlaceData**](PlaceData.md)|  | 
 **organization** | [**String**](.md)| The identifier of the resource. | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**Place**](Place.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

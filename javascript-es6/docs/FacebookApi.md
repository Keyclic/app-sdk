# @KeyclicSdkJavascript.FacebookApi

All URIs are relative to *https://api.keyclic.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**postFacebook**](FacebookApi.md#postFacebook) | **POST** /security/connect/facebook | Create one Facebook resource.


<a name="postFacebook"></a>
# **postFacebook**
> SuccessLogin postFacebook(xKeyclicApp, facebookConnectData, opts)

Create one Facebook resource.

### Example
```javascript
import @KeyclicSdkJavascript from '@keyclic/sdk-javascript';

let apiInstance = new @KeyclicSdkJavascript.FacebookApi();

let xKeyclicApp = "com.keyclic.app"; // String | 

let facebookConnectData = new @KeyclicSdkJavascript.FacebookConnectData(); // FacebookConnectData | 

let opts = { 
  'acceptLanguage': "fr-FR", // String | 
  'xKeyclicAppVersion': "xKeyclicAppVersion_example" // String | 
};

apiInstance.postFacebook(xKeyclicApp, facebookConnectData, opts, (error, data, response) => {
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
 **facebookConnectData** | [**FacebookConnectData**](FacebookConnectData.md)|  | 
 **acceptLanguage** | **String**|  | [optional] [default to fr-FR]
 **xKeyclicAppVersion** | **String**|  | [optional] 

### Return type

[**SuccessLogin**](SuccessLogin.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json;charset=UTF-8
 - **Accept**: application/hal+json;charset=UTF-8

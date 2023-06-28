# keyclic_sdk_api_platform.model.IntegrationLinkJsonhalRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**AssetJsonhalReadLinks**](AssetJsonhalReadLinks.md) |  | [optional] 
**data** | [**Map<String, Object>**](Object.md) |  | [optional] [default to const {}]
**metadata** | [**Map<String, Object>**](Object.md) |  | [optional] [default to const {}]
**name** | **String** |  | [optional] 
**source_** | **String** | Identify the unique identifier of the resource in the source system. | 
**state** | **String** |  | [optional] [default to 'INACTIVE']
**target** | **String** | Identify the unique identifier of the resource in the target system. | [optional] 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



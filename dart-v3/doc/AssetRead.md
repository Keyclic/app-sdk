# keyclic_sdk_api_platform.model.AssetRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**name** | **String** |  | 
**preferences** | [**PreferencesAssetRead**](PreferencesAssetRead.md) |  | [optional] 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**path** | [**List<NodeRead>**](NodeRead.md) |  | [optional] [readonly] [default to const []]
**address** | [**PostalAddressRead**](PostalAddressRead.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 
**parent** | **String** |  | [optional] 
**state** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



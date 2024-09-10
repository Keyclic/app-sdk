# keyclic_sdk_api_platform.model.CategoryRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | 
**organization** | **String** |  | [optional] [readonly] 
**type** | [**CategoryTypeRead**](CategoryTypeRead.md) |  | [optional] 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**identificationNumber** | **String** |  | [optional] 
**path** | [**List<NodeRead>**](NodeRead.md) |  | [optional] [readonly] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 
**children** | [**List<CategoryRead>**](CategoryRead.md) |  | [optional] [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



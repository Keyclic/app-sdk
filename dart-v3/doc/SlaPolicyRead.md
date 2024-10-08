# keyclic_sdk_api_platform.model.SlaPolicyRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**fromStates** | **List<String>** |  | [optional] [default to const []]
**toStates** | **List<String>** |  | [optional] [default to const []]
**id** | **String** | The resource identifier. | [optional] [readonly] 
**timeTarget** | **String** |  | 
**description** | **String** |  | [optional] 
**name** | **String** |  | 
**enabled** | **bool** |  | [optional] 
**conditions** | [**List<ConditionRead>**](ConditionRead.md) |  | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



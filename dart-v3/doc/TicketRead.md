# keyclic_sdk_api_platform.model.TicketRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **String** |  | [optional] 
**description** | **String** |  | [optional] 
**dueBy** | [**DateTime**](DateTime.md) |  | [optional] 
**priority** | [**TicketPriorityRead**](TicketPriorityRead.md) |  | [optional] 
**scheduledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**tags** | **List<String>** |  | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 
**archived** | **bool** |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



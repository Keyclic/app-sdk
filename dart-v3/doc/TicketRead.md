# keyclic_sdk_api_platform.model.TicketRead

## Load the model package
```dart
import 'package:keyclic_sdk_api_platform/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**assignments** | [**List<AssignmentRead>**](AssignmentRead.md) |  | [optional] [readonly] [default to const []]
**category** | [**CategoryRead**](CategoryRead.md) |  | [optional] 
**description** | **String** |  | [optional] 
**dueBy** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 
**equipments** | [**List<EquipmentRead>**](EquipmentRead.md) |  | [optional] [readonly] [default to const []]
**name** | **String** |  | [optional] 
**organization** | **String** |  | [readonly] 
**phase** | [**WorkflowStateRead**](WorkflowStateRead.md) |  | [optional] 
**place** | [**PlaceRead**](PlaceRead.md) |  | 
**priority** | [**TicketPriorityRead**](TicketPriorityRead.md) |  | [optional] 
**scheduledAt** | [**DateTime**](DateTime.md) |  | [optional] 
**completed** | **bool** |  | [optional] 
**feedback** | [**FeedbackRead**](FeedbackRead.md) |  | 
**id** | **String** | The resource identifier. | [optional] [readonly] 
**tags** | **List<String>** |  | [optional] [default to const []]
**createdAt** | [**DateTime**](DateTime.md) | The date and time when the resource was created, in UTC format. | [optional] [readonly] 
**updatedAt** | [**DateTime**](DateTime.md) | The date and time when the resource was updated, in UTC format. | [optional] [readonly] 
**children** | **List<String>** |  | [optional] [readonly] [default to const []]
**parent** | **String** |  | [optional] [readonly] 
**state** | [**WorkflowStateRead**](WorkflowStateRead.md) |  | [optional] 
**reference** | **String** |  | [optional] [readonly] 
**archived** | **bool** |  | [optional] 
**images** | **List<String>** |  | [optional] [readonly] [default to const []]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



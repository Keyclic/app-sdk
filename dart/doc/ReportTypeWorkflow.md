# keyclic_sdk_api.model.ReportTypeWorkflow

## Load the model package
```dart
import 'package:keyclic_sdk_api/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 
**description** | **String** |  | [optional] 
**end** | [**WorkflowState**](WorkflowState.md) |  | [optional] 
**id** | **String** |  | [optional] [readonly] 
**name** | **String** |  | [optional] 
**start** | [**WorkflowState**](WorkflowState.md) |  | [optional] 
**states** | [**List<WorkflowState>**](WorkflowState.md) |  | [optional] [default to const []]
**transitions** | [**List<WorkflowTransition>**](WorkflowTransition.md) |  | [optional] [default to const []]
**type** | **String** |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] [readonly] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



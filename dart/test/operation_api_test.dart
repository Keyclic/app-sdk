//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api/api.dart';
import 'package:test/test.dart';

/// tests for OperationApi
void main() {
  // final instance = OperationApi();

  group('tests for OperationApi', () {
    // Retrieve all Assignment resources.
    //
    //Future<AssignmentPagination> cgetAssignmentsByOperation(String xKeyclicApp, String operation, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, int page, int limit }) async
    test('test cgetAssignmentsByOperation', () async {});

    // Retrieve all Comment resources.
    //
    //Future<ActivityPagination> cgetCommentsByOperation(String xKeyclicApp, String operation, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, int page, int limit }) async
    test('test cgetCommentsByOperation', () async {});

    // Retrieve all Document resources.
    //
    //Future<DocumentPagination> cgetDocumentsByOperation(String xKeyclicApp, String operation, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String state, List<String> statesLeftSquareBracketRightSquareBracket, int page, int limit }) async
    test('test cgetDocumentsByOperation', () async {});

    // Remove one Attachment resource.
    //
    //Future deleteAttachmentByOperationAndAttachment(String xKeyclicApp, String operation, String attachment, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteAttachmentByOperationAndAttachment', () async {});

    // Remove one Operation resource.
    //
    //Future deleteOperation(String xKeyclicApp, String operation, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteOperation', () async {});

    // Retrieve one Operation resource.
    //
    //Future<Operation> getOperation(String xKeyclicApp, String operation, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getOperation', () async {});

    // Retrieve one Tracking resource.
    //
    //Future<Tracking> getTrackingByOperation(String xKeyclicApp, String operation, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getTrackingByOperation', () async {});

    // Edit one Operation resource.
    //
    //Future<Operation> patchOperation(String xKeyclicApp, String operation, TaskPatch taskPatch, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchOperation', () async {});

    // Create one Assign resource.
    //
    //Future<Operation> postAssignByOperation(String xKeyclicApp, String operation, AssignData assignData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postAssignByOperation', () async {});

    // Create one Attachment resource.
    //
    //Future<Operation> postAttachmentByOperation(String xKeyclicApp, String operation, FileData fileData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postAttachmentByOperation', () async {});

    // Create one Comment resource.
    //
    //Future<Operation> postCommentByOperation(String xKeyclicApp, String operation, CommentData commentData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postCommentByOperation', () async {});

    // Create one Document resource.
    //
    //Future<Document> postDocumentByOperation(String xKeyclicApp, String operation, DocumentData documentData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postDocumentByOperation', () async {});

    // Create one Operation resource.
    //
    //Future<Operation> postOperation(String xKeyclicApp, OperationData operationData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postOperation', () async {});

    // Create one Workflow resource.
    //
    //Future<Operation> postWorkflowByOperation(String xKeyclicApp, String operation, WorkflowData workflowData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postWorkflowByOperation', () async {});
  });
}

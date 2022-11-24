//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api/api.dart';
import 'package:test/test.dart';

/// tests for ReportApi
void main() {
  // final instance = ReportApi();

  group('tests for ReportApi', () {
    // Retrieve all Assignment resources.
    //
    //Future<AssignmentPagination> cgetAssignmentsByReport(String xKeyclicApp, String report, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, int page, int limit }) async
    test('test cgetAssignmentsByReport', () async {});

    // Retrieve all Document resources.
    //
    //Future<DocumentPagination> cgetDocumentsByReport(String xKeyclicApp, String report, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String state, List<String> statesLeftSquareBracketRightSquareBracket, int page, int limit }) async
    test('test cgetDocumentsByReport', () async {});

    // Retrieve all Note resources.
    //
    //Future<NotePagination> cgetNotesByTask(String xKeyclicApp, String task, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, int page, int limit }) async
    test('test cgetNotesByTask', () async {});

    // Retrieve all Operation resources.
    //
    //Future<OperationPagination> cgetOperationsByReport(String xKeyclicApp, String report, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, String assignedTo, List<String> assignedTosLeftSquareBracketRightSquareBracket, String batch, List<String> batchesLeftSquareBracketRightSquareBracket, String category, List<String> categoriesLeftSquareBracketRightSquareBracket, String createdBy, List<String> createdBiesLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, String deep, String delegatedTo, List<String> delegatedTosLeftSquareBracketRightSquareBracket, String hasDocuments, String isNull, String leaf, String level, String managedBy, List<String> managedBiesLeftSquareBracketRightSquareBracket, String member, List<String> membersLeftSquareBracketRightSquareBracket, String operationStateAll, String operationState, List<String> operationStatesLeftSquareBracketRightSquareBracket, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String phase, List<String> phasesLeftSquareBracketRightSquareBracket, String place, List<String> placesLeftSquareBracketRightSquareBracket, String priority, List<String> prioritiesLeftSquareBracketRightSquareBracket, String query, List<String> ratingLeftSquareBracketRightSquareBracket, DateTime scheduledAtAfter, DateTime scheduledAtBefore, String state, List<String> statesLeftSquareBracketRightSquareBracket, List<String> visibilityLeftSquareBracketRightSquareBracket, int page, int limit }) async
    test('test cgetOperationsByReport', () async {});

    // Retrieve one Report resource.
    //
    //Future<Report> getReport(String xKeyclicApp, String report, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getReport', () async {});

    // Retrieve one Tracking resource.
    //
    //Future<Tracking> getTrackingByReport(String xKeyclicApp, String report, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getTrackingByReport', () async {});

    // Edit one Report resource.
    //
    //Future<Report> patchReport(String xKeyclicApp, String report, TaskPatch taskPatch, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchReport', () async {});

    // Create one Document resource.
    //
    //Future<Document> postDocumentByReport(String xKeyclicApp, String report, DocumentData documentData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postDocumentByReport', () async {});

    // Create one Workflow resource.
    //
    //Future<Report> postWorkflowByReport(String xKeyclicApp, String report, WorkflowData workflowData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postWorkflowByReport', () async {});
  });
}

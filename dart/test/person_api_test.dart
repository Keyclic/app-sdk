//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api/api.dart';
import 'package:test/test.dart';

/// tests for PersonApi
void main() {
  // final instance = PersonApi();

  group('tests for PersonApi', () {
    // Retrieve all Document resources.
    //
    //Future<DocumentPagination> cgetDocumentsByPerson(String xKeyclicApp, String person, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String state, List<String> statesLeftSquareBracketRightSquareBracket, int page, int limit }) async
    test('test cgetDocumentsByPerson', () async {});

    // Retrieve all Membership resources.
    //
    //Future<MemberPagination> cgetMembershipsByPerson(String xKeyclicApp, String person, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, String archived, String contactPointEmail, DateTime after, DateTime before, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String permission, String query, String role, List<String> rolesLeftSquareBracketRightSquareBracket, String type, int page, int limit }) async
    test('test cgetMembershipsByPerson', () async {});

    // Retrieve all Operation resources.
    //
    //Future<OperationPagination> cgetOperationsByPerson(String xKeyclicApp, String person, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, String archived, String asset, List<String> assetsLeftSquareBracketRightSquareBracket, String batch, List<String> batchesLeftSquareBracketRightSquareBracket, String category, List<String> categoriesLeftSquareBracketRightSquareBracket, String createdBy, List<String> createdBiesLeftSquareBracketRightSquareBracket, DateTime afterDueBy, DateTime after, DateTime beforeDueBy, DateTime before, String deep, String delegatedTo, List<String> delegatedTosLeftSquareBracketRightSquareBracket, String hasDocuments, String isEmpty, String isNull, String leaf, String level, String managedBy, List<String> managedBiesLeftSquareBracketRightSquareBracket, String member, List<String> membersLeftSquareBracketRightSquareBracket, String operationStateAll, String operationState, List<String> operationStatesLeftSquareBracketRightSquareBracket, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String phase, List<String> phasesLeftSquareBracketRightSquareBracket, String place, List<String> placesLeftSquareBracketRightSquareBracket, String priority, List<String> prioritiesLeftSquareBracketRightSquareBracket, String query, List<String> ratingLeftSquareBracketRightSquareBracket, DateTime scheduledAtAfter, DateTime scheduledAtBefore, String state, List<String> statesLeftSquareBracketRightSquareBracket, List<String> visibilityLeftSquareBracketRightSquareBracket, int page, int limit }) async
    test('test cgetOperationsByPerson', () async {});

    // Retrieve all ReviewRequest resources.
    //
    //Future<ReviewRequestPagination> cgetReviewRequestsByPerson(String xKeyclicApp, String person, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, String hasReview, int page, int limit }) async
    test('test cgetReviewRequestsByPerson', () async {});

    // Remove one Person resource.
    //
    //Future deletePerson(String xKeyclicApp, String person, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deletePerson', () async {});

    // Retrieve one Feed resource.
    //
    //Future<Feed> getFeedByPerson(String xKeyclicApp, String person, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getFeedByPerson', () async {});

    // Retrieve one Person resource.
    //
    //Future<Person> getPerson(String xKeyclicApp, String person, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getPerson', () async {});

    // Edit one Person resource.
    //
    //Future<Person> patchPerson(String xKeyclicApp, String person, PersonPatch personPatch, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchPerson', () async {});
  });
}

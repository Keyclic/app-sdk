//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api_platform/api.dart';
import 'package:test/test.dart';

/// tests for TicketApi
void main() {
  // final instance = TicketApi();

  group('tests for TicketApi', () {
    // Removes the Ticket resource.
    //
    // Removes the Ticket resource.
    //
    //Future deleteTicket(String identifier, String xKeyclicApp, String xOrganizationId, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteTicket', () async {});

    // Retrieves a Ticket resource.
    //
    // Retrieves a Ticket resource.
    //
    //Future<TicketJsonhalRead> getTicket(String identifier, String xKeyclicApp, String xOrganizationId, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getTicket', () async {});

    // Retrieves the collection of Ticket resources.
    //
    // Retrieves the collection of Ticket resources.
    //
    //Future<GetTicketCollection200Response> getTicketCollection(String xKeyclicApp, String xOrganizationId, { int page, int limit, bool pagination, String search, bool archived, bool completed, String createdAtLeftSquareBracketBeforeRightSquareBracket, String createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, String createdAtLeftSquareBracketAfterRightSquareBracket, String createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, String dueByLeftSquareBracketBeforeRightSquareBracket, String dueByLeftSquareBracketStrictlyBeforeRightSquareBracket, String dueByLeftSquareBracketAfterRightSquareBracket, String dueByLeftSquareBracketStrictlyAfterRightSquareBracket, String scheduledAtLeftSquareBracketBeforeRightSquareBracket, String scheduledAtLeftSquareBracketStrictlyBeforeRightSquareBracket, String scheduledAtLeftSquareBracketAfterRightSquareBracket, String scheduledAtLeftSquareBracketStrictlyAfterRightSquareBracket, String updatedAtLeftSquareBracketBeforeRightSquareBracket, String updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, String updatedAtLeftSquareBracketAfterRightSquareBracket, String updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, String resourceType, String taskEquipments, List<String> taskEquipmentsLeftSquareBracketRightSquareBracket, bool existsLeftSquareBracketArchivedAtRightSquareBracket, bool existsLeftSquareBracketAssignmentsRightSquareBracket, bool existsLeftSquareBracketDocumentsRightSquareBracket, String operationStateAll, List<String> operationStateAllLeftSquareBracketRightSquareBracket, String orderLeftSquareBracketCreatedAtRightSquareBracket, String orderLeftSquareBracketDueByRightSquareBracket, String orderLeftSquareBracketPriorityPeriodPositionRightSquareBracket, String orderLeftSquareBracketScheduledAtRightSquareBracket, String orderLeftSquareBracketUpdatedAtRightSquareBracket, String assignmentsPeriodMember, List<String> assignmentsPeriodMemberLeftSquareBracketRightSquareBracket, String assignmentsPeriodService, List<String> assignmentsPeriodServiceLeftSquareBracketRightSquareBracket, String assignmentsPeriodServicePeriodManager, List<String> assignmentsPeriodServicePeriodManagerLeftSquareBracketRightSquareBracket, String category, List<String> categoryLeftSquareBracketRightSquareBracket, String categoryPeriodType, List<String> categoryPeriodTypeLeftSquareBracketRightSquareBracket, String childrenPeriodAssignmentsPeriodMember, List<String> childrenPeriodAssignmentsPeriodMemberLeftSquareBracketRightSquareBracket, String childrenPeriodState, List<String> childrenPeriodStateLeftSquareBracketRightSquareBracket, String createdBy, List<String> createdByLeftSquareBracketRightSquareBracket, String equipments, List<String> equipmentsLeftSquareBracketRightSquareBracket, String feedbackPeriodBatch, List<String> feedbackPeriodBatchLeftSquareBracketRightSquareBracket, String feedbackPeriodVisibility, List<String> feedbackPeriodVisibilityLeftSquareBracketRightSquareBracket, int level, List<int> levelLeftSquareBracketRightSquareBracket, String parent, List<String> parentLeftSquareBracketRightSquareBracket, String phase, List<String> phaseLeftSquareBracketRightSquareBracket, String place, List<String> placeLeftSquareBracketRightSquareBracket, String priority, List<String> priorityLeftSquareBracketRightSquareBracket, int reviewsPeriodReviewRating, List<int> reviewsPeriodReviewRatingLeftSquareBracketRightSquareBracket, String state, List<String> stateLeftSquareBracketRightSquareBracket, List<String> treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket, List<String> treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket, List<String> treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket, String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getTicketCollection', () async {});

    // Updates the Ticket resource.
    //
    // Updates the Ticket resource.
    //
    //Future<TicketJsonhalRead> patchTicket(String identifier, String xKeyclicApp, String xOrganizationId, TicketEditTicketCommandWrite ticketEditTicketCommandWrite, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, bool xEnableDispatch }) async
    test('test patchTicket', () async {});

    // Creates a Ticket resource.
    //
    // Creates a Ticket resource.
    //
    //Future<TicketJsonhalRead> postTicket(String xKeyclicApp, String xOrganizationId, TicketCreateTicketCommandWrite ticketCreateTicketCommandWrite, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, bool xEnableDispatch }) async
    test('test postTicket', () async {});
  });
}

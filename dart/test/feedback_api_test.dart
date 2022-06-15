//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api/api.dart';
import 'package:test/test.dart';

/// tests for FeedbackApi
void main() {
  // final instance = FeedbackApi();

  group('tests for FeedbackApi', () {
    // Retrieve all Comment resources.
    //
    //Future<ActivityPagination> cgetCommentsByFeedback(String xKeyclicApp, String feedback, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, int page, int limit }) async
    test('test cgetCommentsByFeedback', () async {});

    // Retrieve all Feedback resources.
    //
    //Future<FeedbackPagination> cgetFeedback(String xKeyclicApp, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, String batch, List<String> batchesLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, List<String> geoHashLeftSquareBracketRightSquareBracket, List<String> orderLeftSquareBracketRightSquareBracket, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, int page, int limit }) async
    test('test cgetFeedback', () async {});

    // Retrieve all Review resources.
    //
    //Future<ReviewPagination> cgetReviewsByFeedback(String xKeyclicApp, String feedback, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, int page, int limit }) async
    test('test cgetReviewsByFeedback', () async {});

    // Remove one Feedback resource.
    //
    //Future deleteFeedback(String xKeyclicApp, String feedback, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteFeedback', () async {});

    // Retrieve one Feedback resource.
    //
    //Future<Feedback> getFeedback(String xKeyclicApp, String feedback, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getFeedback', () async {});

    // Retrieve one Tracking resource.
    //
    //Future<Tracking> getTrackingByFeedback(String xKeyclicApp, String feedback, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getTrackingByFeedback', () async {});

    // Create one Comment resource.
    //
    //Future<Feedback> postCommentByFeedback(String xKeyclicApp, String feedback, CommentData commentData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postCommentByFeedback', () async {});

    // Create one Image resource.
    //
    //Future<Feedback> postImageByFeedback(String xKeyclicApp, String feedback, ImageData imageData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postImageByFeedback', () async {});

    // Create one Issue resource.
    //
    //Future<Feedback> postIssue(String xKeyclicApp, FeedbackData feedbackData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postIssue', () async {});

    // Create one Workflow resource.
    //
    //Future<Feedback> postWorkflowByFeedback(String xKeyclicApp, String feedback, FeedbackWorkflowTransitionData feedbackWorkflowTransitionData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postWorkflowByFeedback', () async {});
  });
}

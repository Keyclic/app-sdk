//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

// import 'package:keyclic_sdk_api/api.dart';
import 'package:test/test.dart';

/// tests for DigitalDocumentApi
void main() {
  // final instance = DigitalDocumentApi();

  group('tests for DigitalDocumentApi', () {
    // Retrieve all Feedback resources.
    //
    //Future<FeedbackPagination> cgetFeedbackByDigitalDocument(String xKeyclicApp, String digitalDocument, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, String batch, List<String> batchesLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, List<String> geoHashLeftSquareBracketRightSquareBracket, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, int page, int limit }) async
    test('test cgetFeedbackByDigitalDocument', () async {});

    // Remove one DigitalDocument resource.
    //
    //Future deleteDigitalDocument(String xKeyclicApp, String digitalDocument, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteDigitalDocument', () async {});

    // Retrieve one DigitalDocument resource.
    //
    //Future<Document> getDigitalDocument(String xKeyclicApp, String digitalDocument, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getDigitalDocument', () async {});

    // Edit one DigitalDocument resource.
    //
    //Future<Document> patchDigitalDocument(String xKeyclicApp, String digitalDocument, DocumentPatch documentPatch, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchDigitalDocument', () async {});

    // Create one DigitalDocument resource.
    //
    //Future<Document> postDigitalDocument(String xKeyclicApp, DocumentData documentData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postDigitalDocument', () async {});
  });
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api_platform/api.dart';
import 'package:test/test.dart';

/// tests for AttachmentApi
void main() {
  // final instance = AttachmentApi();

  group('tests for AttachmentApi', () {
    // Removes the Attachment resource.
    //
    // Removes the Attachment resource.
    //
    //Future deleteAttachment(String identifier, String xKeyclicApp, String xOrganizationId, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteAttachment', () async {});

    // Retrieves a Attachment resource.
    //
    // Retrieves a Attachment resource.
    //
    //Future<AttachmentJsonhalRead> getAttachment(String identifier, String xKeyclicApp, String xOrganizationId, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getAttachment', () async {});

    // Retrieves the collection of Attachment resources.
    //
    // Retrieves the collection of Attachment resources.
    //
    //Future<GetAttachments200Response> getAttachments(String xKeyclicApp, String xOrganizationId, { int page, int limit, bool pagination, String resourcePeriodIri, List<String> resourcePeriodIriLeftSquareBracketRightSquareBracket, String attachedToPeriodIri, List<String> attachedToPeriodIriLeftSquareBracketRightSquareBracket, String relation, String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getAttachments', () async {});

    // Creates a Attachment resource.
    //
    // Creates a Attachment resource.
    //
    //Future<AttachmentJsonhalRead> postAttachment(String xKeyclicApp, String xOrganizationId, AttachmentCreateAttachmentCommandWrite attachmentCreateAttachmentCommandWrite, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postAttachment', () async {});
  });
}

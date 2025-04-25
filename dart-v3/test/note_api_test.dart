//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api_platform/api.dart';
import 'package:test/test.dart';

/// tests for NoteApi
void main() {
  // final instance = NoteApi();

  group('tests for NoteApi', () {
    // Removes the Note resource.
    //
    // Removes the Note resource.
    //
    //Future deleteNote(String identifier, String xKeyclicApp, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteNote', () async {});

    // Retrieves a Note resource.
    //
    // Retrieves a Note resource.
    //
    //Future<NoteJsonhalRead> getNote(String identifier, String xKeyclicApp, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getNote', () async {});

    // Retrieves the collection of Note resources.
    //
    // Retrieves the collection of Note resources.
    //
    //Future<GetNoteCollection200Response> getNoteCollection(String xKeyclicApp, String xOrganizationId, { int page, int limit, bool pagination, String about, List<String> aboutLeftSquareBracketRightSquareBracket, String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getNoteCollection', () async {});

    // Updates the Note resource.
    //
    // Updates the Note resource.
    //
    //Future<NoteJsonhalRead> patchNote(String identifier, String xKeyclicApp, NoteEditNoteCommandWrite noteEditNoteCommandWrite, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchNote', () async {});

    // Creates a Note resource.
    //
    // Creates a Note resource.
    //
    //Future<NoteJsonhalRead> postNote(String xKeyclicApp, NoteCreateNoteCommandWrite noteCreateNoteCommandWrite, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postNote', () async {});
  });
}

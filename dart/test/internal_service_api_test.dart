//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

// import 'package:keyclic_sdk_api/api.dart';
import 'package:test/test.dart';

/// tests for InternalServiceApi
void main() {
  // final instance = InternalServiceApi();

  group('tests for InternalServiceApi', () {
    // Retrieve all Member resources.
    //
    //Future<MemberPagination> cgetMembersByInternalService(String xKeyclicApp, String internalService, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String permission, String query, String role, List<String> rolesLeftSquareBracketRightSquareBracket, String type, int page, int limit }) async
    test('test cgetMembersByInternalService', () async {});

    // Remove one InternalService resource.
    //
    //Future deleteInternalService(String xKeyclicApp, String internalService, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteInternalService', () async {});

    // Remove one Member resource.
    //
    //Future deleteMemberByInternalServiceAndMember(String xKeyclicApp, String internalService, String member, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteMemberByInternalServiceAndMember', () async {});

    // Retrieve one InternalService resource.
    //
    //Future<InternalService> getInternalService(String xKeyclicApp, String internalService, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getInternalService', () async {});

    // Edit one InternalService resource.
    //
    //Future<InternalService> patchInternalService(String xKeyclicApp, String internalService, InternalServicePatch internalServicePatch, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchInternalService', () async {});

    // Create one InternalService resource.
    //
    //Future<InternalService> postInternalService(String xKeyclicApp, InternalServiceData internalServiceData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postInternalService', () async {});

    // Create one Member resource.
    //
    //Future<InternalService> postMemberByInternalService(String xKeyclicApp, String internalService, ServiceMemberData serviceMemberData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postMemberByInternalService', () async {});
  });
}

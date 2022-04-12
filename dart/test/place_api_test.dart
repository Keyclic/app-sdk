//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

// import 'package:keyclic_sdk_api/api.dart';
import 'package:test/test.dart';

/// tests for PlaceApi
void main() {
  // final instance = PlaceApi();

  group('tests for PlaceApi', () {
    // Retrieve all Document resources.
    //
    //Future<DocumentPagination> cgetDocumentsByPlace(String xKeyclicApp, String place, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String state, List<String> statesLeftSquareBracketRightSquareBracket, int page, int limit }) async
    test('test cgetDocumentsByPlace', () async {});

    // Retrieve all Place resources.
    //
    //Future<PlacePagination> cgetPlaces(String xKeyclicApp, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, String businessActivity, List<String> businessActivitiesLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, String geoElevation, List<String> geoHashLeftSquareBracketRightSquareBracket, String geoPoint, String geoCoordinates, String leaf, String level, String organization, List<String> organizationsLeftSquareBracketRightSquareBracket, String parent, List<String> parentsLeftSquareBracketRightSquareBracket, String query, int page, int limit }) async
    test('test cgetPlaces', () async {});

    // Retrieve all Plan resources.
    //
    //Future<PlanPagination> cgetPlansByPlace(String xKeyclicApp, String place, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion, List<String> orderLeftSquareBracketRightSquareBracket, DateTime after, DateTime before, int page, int limit }) async
    test('test cgetPlansByPlace', () async {});

    // Retrieve one Geo resource.
    //
    //Future<GeoShape> getGeoByPlace(String xKeyclicApp, String place, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getGeoByPlace', () async {});

    // Retrieve one Place resource.
    //
    //Future<Place> getPlace(String xKeyclicApp, String place, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getPlace', () async {});

    // Edit one Place resource.
    //
    //Future<Place> patchPlace(String xKeyclicApp, String place, PlacePatch placePatch, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchPlace', () async {});

    // Create one Document resource.
    //
    //Future<Document> postDocumentByPlace(String xKeyclicApp, String place, DocumentData documentData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postDocumentByPlace', () async {});

    // Create one Place resource.
    //
    //Future<Place> postPlace(String xKeyclicApp, PlaceData placeData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postPlace', () async {});
  });
}

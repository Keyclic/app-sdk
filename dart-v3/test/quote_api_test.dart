//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api_platform/api.dart';
import 'package:test/test.dart';

/// tests for QuoteApi
void main() {
  // final instance = QuoteApi();

  group('tests for QuoteApi', () {
    // Removes the Quote resource.
    //
    // Removes the Quote resource.
    //
    //Future deleteQuote(String identifier, String xKeyclicApp, String xOrganizationId, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteQuote', () async {});

    // Retrieves a Quote resource.
    //
    // Retrieves a Quote resource.
    //
    //Future<QuoteJsonhalRead> getQuote(String identifier, String xKeyclicApp, String xOrganizationId, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getQuote', () async {});

    // Retrieves the collection of Quote resources.
    //
    // Retrieves the collection of Quote resources.
    //
    //Future<GetQuoteCollection200Response> getQuoteCollection(String xKeyclicApp, String xOrganizationId, { int page, int limit, bool pagination, String search, String createdAtLeftSquareBracketBeforeRightSquareBracket, String createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, String createdAtLeftSquareBracketAfterRightSquareBracket, String createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, String expirationDateLeftSquareBracketBeforeRightSquareBracket, String expirationDateLeftSquareBracketStrictlyBeforeRightSquareBracket, String expirationDateLeftSquareBracketAfterRightSquareBracket, String expirationDateLeftSquareBracketStrictlyAfterRightSquareBracket, String issueDateLeftSquareBracketBeforeRightSquareBracket, String issueDateLeftSquareBracketStrictlyBeforeRightSquareBracket, String issueDateLeftSquareBracketAfterRightSquareBracket, String issueDateLeftSquareBracketStrictlyAfterRightSquareBracket, String resolutionDateLeftSquareBracketBeforeRightSquareBracket, String resolutionDateLeftSquareBracketStrictlyBeforeRightSquareBracket, String resolutionDateLeftSquareBracketAfterRightSquareBracket, String resolutionDateLeftSquareBracketStrictlyAfterRightSquareBracket, String updatedAtLeftSquareBracketBeforeRightSquareBracket, String updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, String updatedAtLeftSquareBracketAfterRightSquareBracket, String updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, String orderLeftSquareBracketAmountExcludingTaxPeriodValueRightSquareBracket, String orderLeftSquareBracketAmountIncludingTaxPeriodValueRightSquareBracket, String orderLeftSquareBracketIssueDateRightSquareBracket, String orderLeftSquareBracketNameRightSquareBracket, String orderLeftSquareBracketNumberRightSquareBracket, String orderLeftSquareBracketPlacePeriodNameRightSquareBracket, String orderLeftSquareBracketProviderContactPointPeriodNameRightSquareBracket, String author, List<String> authorLeftSquareBracketRightSquareBracket, String authorContactPointPeriodFamilyName, List<String> authorContactPointPeriodFamilyNameLeftSquareBracketRightSquareBracket, String place, List<String> placeLeftSquareBracketRightSquareBracket, String provider, List<String> providerLeftSquareBracketRightSquareBracket, String providerContactPointPeriodName, List<String> providerContactPointPeriodNameLeftSquareBracketRightSquareBracket, String state, List<String> stateLeftSquareBracketRightSquareBracket, String task, List<String> taskLeftSquareBracketRightSquareBracket, List<String> treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketAncestorsRightSquareBracketLeftSquareBracketRightSquareBracket, List<String> treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketDescendantsRightSquareBracketLeftSquareBracketRightSquareBracket, List<String> treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketNodeRightSquareBracketLeftSquareBracketRightSquareBracket, List<String> treeLeftSquareBracketPlaceRightSquareBracketLeftSquareBracketSubtreeRightSquareBracketLeftSquareBracketRightSquareBracket, String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getQuoteCollection', () async {});

    // Updates the Quote resource.
    //
    // Updates the Quote resource.
    //
    //Future<QuoteJsonhalRead> patchQuote(String identifier, String xKeyclicApp, String xOrganizationId, QuoteEditQuoteCommandWrite quoteEditQuoteCommandWrite, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchQuote', () async {});

    // Creates a Quote resource.
    //
    // Creates a Quote resource.
    //
    //Future<QuoteJsonhalRead> postQuote(String xKeyclicApp, String xOrganizationId, QuoteCreateQuoteCommandWrite quoteCreateQuoteCommandWrite, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postQuote', () async {});
  });
}

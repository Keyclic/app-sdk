//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api_platform/api.dart';
import 'package:test/test.dart';

/// tests for ContractApi
void main() {
  // final instance = ContractApi();

  group('tests for ContractApi', () {
    // Removes the Contract resource.
    //
    // Removes the Contract resource.
    //
    //Future deleteContract(String identifier, String xKeyclicApp, String xOrganizationId, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test deleteContract', () async {});

    // Retrieves a Contract resource.
    //
    // Retrieves a Contract resource.
    //
    //Future<ContractJsonhalRead> getContract(String identifier, String xKeyclicApp, String xOrganizationId, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getContract', () async {});

    // Retrieves the collection of Contract resources.
    //
    // Retrieves the collection of Contract resources.
    //
    //Future<GetContracts200Response> getContracts(String xKeyclicApp, String xOrganizationId, { int page, int limit, bool pagination, String search, String createdAtLeftSquareBracketBeforeRightSquareBracket, String createdAtLeftSquareBracketStrictlyBeforeRightSquareBracket, String createdAtLeftSquareBracketAfterRightSquareBracket, String createdAtLeftSquareBracketStrictlyAfterRightSquareBracket, String effectiveDateLeftSquareBracketBeforeRightSquareBracket, String effectiveDateLeftSquareBracketStrictlyBeforeRightSquareBracket, String effectiveDateLeftSquareBracketAfterRightSquareBracket, String effectiveDateLeftSquareBracketStrictlyAfterRightSquareBracket, String signedAtLeftSquareBracketBeforeRightSquareBracket, String signedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, String signedAtLeftSquareBracketAfterRightSquareBracket, String signedAtLeftSquareBracketStrictlyAfterRightSquareBracket, String terminationDateLeftSquareBracketBeforeRightSquareBracket, String terminationDateLeftSquareBracketStrictlyBeforeRightSquareBracket, String terminationDateLeftSquareBracketAfterRightSquareBracket, String terminationDateLeftSquareBracketStrictlyAfterRightSquareBracket, String updatedAtLeftSquareBracketBeforeRightSquareBracket, String updatedAtLeftSquareBracketStrictlyBeforeRightSquareBracket, String updatedAtLeftSquareBracketAfterRightSquareBracket, String updatedAtLeftSquareBracketStrictlyAfterRightSquareBracket, String orderLeftSquareBracketBillingPeriodAdjustedCostPeriodValueRightSquareBracket, String orderLeftSquareBracketBillingPeriodInitialCostPeriodValueRightSquareBracket, String orderLeftSquareBracketCreatedAtRightSquareBracket, String orderLeftSquareBracketEffectiveDateRightSquareBracket, String orderLeftSquareBracketNameRightSquareBracket, String orderLeftSquareBracketNumberRightSquareBracket, String orderLeftSquareBracketUpdatedAtRightSquareBracket, String orderLeftSquareBracketSignedAtRightSquareBracket, String orderLeftSquareBracketStateRightSquareBracket, List<String> propertiesLeftSquareBracketRightSquareBracket, bool onCall, List<bool> onCallLeftSquareBracketRightSquareBracket, String organizationPeriodIdentifier, List<String> organizationPeriodIdentifierLeftSquareBracketRightSquareBracket, String providerPeriodIdentifier, List<String> providerPeriodIdentifierLeftSquareBracketRightSquareBracket, String state, List<String> stateLeftSquareBracketRightSquareBracket, String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test getContracts', () async {});

    // Updates the Contract resource.
    //
    // Updates the Contract resource.
    //
    //Future<ContractJsonhalRead> patchContract(String identifier, String xKeyclicApp, String xOrganizationId, ContractEditContractCommandData contractEditContractCommandData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test patchContract', () async {});

    // Creates a Contract resource.
    //
    // Creates a Contract resource.
    //
    //Future<ContractJsonhalRead> postContract(String xKeyclicApp, String xOrganizationId, ContractCreateContractCommandData contractCreateContractCommandData, { String acceptLanguage, DateTime xDateTime, String xKeyclicAppPlatform, String xKeyclicAppVersion }) async
    test('test postContract', () async {});
  });
}

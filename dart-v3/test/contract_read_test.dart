//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// import 'package:keyclic_sdk_api_platform/api.dart';
import 'package:test/test.dart';

// tests for ContractRead
void main() {
  // final instance = ContractRead();

  group('test ContractRead', () {
    // BillingRead billing
    test('to test the property `billing`', () async {});

    // Detailed description of the contract.
    // String description
    test('to test the property `description`', () async {});

    // Duration of the contract in ISO 8601 duration format.
    // String duration
    test('to test the property `duration`', () async {});

    // The date and time the contract becomes effective, in ISO 8601 format. The effective date must not be earlier than the billing start date.
    // DateTime effectiveDate
    test('to test the property `effectiveDate`', () async {});

    // Name of the contract.
    // String name
    test('to test the property `name`', () async {});

    // Number assigned to the contract by the organization. Each contract must have a unique contract number to ensure that contracts can be easily identified and tracked.
    // String number
    test('to test the property `number`', () async {});

    // The onCall property represents whether a staff member is currently available for on-call duties.
    // bool onCall
    test('to test the property `onCall`', () async {});

    // Organization responsible for the contract.
    // String provider
    test('to test the property `provider`', () async {});

    // DateTime signedAt
    test('to test the property `signedAt`', () async {});

    // Current state of the contract.
    // String state (default value: 'DRAFT')
    test('to test the property `state`', () async {});

    // The date and time the contract is terminated, in ISO 8601 format. The termination date must be in the future and must not be earlier than the effective date.
    // DateTime terminationDate
    test('to test the property `terminationDate`', () async {});

    // The type of the contract defined by the organization.
    // String type
    test('to test the property `type`', () async {});

    // The resource identifier.
    // String id
    test('to test the property `id`', () async {});

    // The date and time when the resource was created, in UTC format.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {});

    // The date and time when the resource was updated, in UTC format.
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {});

    // RenewalRead renewal
    test('to test the property `renewal`', () async {});
  });
}

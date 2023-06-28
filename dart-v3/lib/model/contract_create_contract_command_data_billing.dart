//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractCreateContractCommandDataBilling implements BillingData {
  /// Returns a new [ContractCreateContractCommandDataBilling] instance.
  ContractCreateContractCommandDataBilling({
    this.initialCost,
    this.startDate,
  });

  /// Returns a new [ContractCreateContractCommandDataBilling] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractCreateContractCommandDataBilling? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate = json[r'startDate'] is String
        ? DateTime.parse(json[r'startDate'])
        : null;
    if (startDate is DateTime && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return ContractCreateContractCommandDataBilling(
      initialCost: PriceData.fromJson(json[r'initialCost']),
      startDate: startDate,
    );
  }

  PriceData? initialCost;

  /// The start date of the billing cycle for the customer's account, in ISO 8601 format.
  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractCreateContractCommandDataBilling &&
        other.initialCost == initialCost &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (initialCost == null ? 0 : initialCost.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<ContractCreateContractCommandDataBilling> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContractCreateContractCommandDataBilling>[];
    }

    return json.fold(<ContractCreateContractCommandDataBilling>[],
        (List<ContractCreateContractCommandDataBilling> previousValue,
            element) {
      final ContractCreateContractCommandDataBilling? object =
          ContractCreateContractCommandDataBilling.fromJson(element);
      if (object is ContractCreateContractCommandDataBilling) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractCreateContractCommandDataBilling> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractCreateContractCommandDataBilling>{};
    }

    return json.entries.fold(
        <String, ContractCreateContractCommandDataBilling>{},
        (Map<String, ContractCreateContractCommandDataBilling> previousValue,
            element) {
      final ContractCreateContractCommandDataBilling? object =
          ContractCreateContractCommandDataBilling.fromJson(element.value);
      if (object is ContractCreateContractCommandDataBilling) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractCreateContractCommandDataBilling-objects as value to a dart map
  static Map<String, List<ContractCreateContractCommandDataBilling>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractCreateContractCommandDataBilling>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractCreateContractCommandDataBilling>>(
          key, ContractCreateContractCommandDataBilling.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractCreateContractCommandDataBilling[initialCost=$initialCost, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (initialCost != null) r'initialCost': initialCost,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}

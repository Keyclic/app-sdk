//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractCreateContractCommandWriteBilling implements BillingWrite {
  /// Returns a new [ContractCreateContractCommandWriteBilling] instance.
  ContractCreateContractCommandWriteBilling({
    this.initialCost,
    this.startDate,
  });

  /// Returns a new [ContractCreateContractCommandWriteBilling] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractCreateContractCommandWriteBilling? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate =
        json[r'startDate'] == null ? null : DateTime.parse(json[r'startDate']);
    if (startDate != null && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return ContractCreateContractCommandWriteBilling(
      initialCost: PriceWrite.fromJson(json[r'initialCost']),
      startDate: startDate,
    );
  }

  PriceWrite? initialCost;

  /// The start date of the billing cycle for the customer's account, in ISO 8601 format.
  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractCreateContractCommandWriteBilling &&
        other.initialCost == initialCost &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (initialCost == null ? 0 : initialCost.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<ContractCreateContractCommandWriteBilling> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ContractCreateContractCommandWriteBilling>[];
    }

    return json.fold(<ContractCreateContractCommandWriteBilling>[],
        (List<ContractCreateContractCommandWriteBilling> previousValue,
            element) {
      final ContractCreateContractCommandWriteBilling? object =
          ContractCreateContractCommandWriteBilling.fromJson(element);
      if (object is ContractCreateContractCommandWriteBilling) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractCreateContractCommandWriteBilling> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractCreateContractCommandWriteBilling>{};
    }

    return json.entries.fold(
        <String, ContractCreateContractCommandWriteBilling>{},
        (Map<String, ContractCreateContractCommandWriteBilling> previousValue,
            element) {
      final ContractCreateContractCommandWriteBilling? object =
          ContractCreateContractCommandWriteBilling.fromJson(element.value);
      if (object is ContractCreateContractCommandWriteBilling) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractCreateContractCommandWriteBilling-objects as value to a dart map
  static Map<String, List<ContractCreateContractCommandWriteBilling>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractCreateContractCommandWriteBilling>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractCreateContractCommandWriteBilling>>(
          key, ContractCreateContractCommandWriteBilling.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractCreateContractCommandWriteBilling[initialCost=$initialCost, startDate=$startDate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && initialCost != null) ||
          (keys?.contains(r'initialCost') ?? false))
        r'initialCost': initialCost?.toJson(),
      if ((keys == null && startDate != null) ||
          (keys?.contains(r'startDate') ?? false))
        r'startDate': startDate?.toUtc().toIso8601String(),
    };
  }
}

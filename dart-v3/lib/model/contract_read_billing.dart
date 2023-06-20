//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractReadBilling implements BillingRead {
  /// Returns a new [ContractReadBilling] instance.
  ContractReadBilling({
    this.adjustedCost,
    this.initialCost,
    this.startDate,
  });

  /// Returns a new [ContractReadBilling] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractReadBilling? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate = json[r'startDate'] is String
        ? DateTime.parse(json[r'startDate'])
        : null;
    if (startDate is DateTime && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return ContractReadBilling(
      adjustedCost: PriceRead.fromJson(json[r'adjustedCost']),
      initialCost: PriceRead.fromJson(json[r'initialCost']),
      startDate: startDate,
    );
  }

  PriceRead? adjustedCost;

  PriceRead? initialCost;

  /// The start date of the billing cycle for the customer's account, in ISO 8601 format.
  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractReadBilling &&
        other.adjustedCost == adjustedCost &&
        other.initialCost == initialCost &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (adjustedCost == null ? 0 : adjustedCost.hashCode) +
      (initialCost == null ? 0 : initialCost.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<ContractReadBilling> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContractReadBilling>[];
    }

    return json.fold(<ContractReadBilling>[],
        (List<ContractReadBilling> previousValue, element) {
      final ContractReadBilling? object = ContractReadBilling.fromJson(element);
      if (object is ContractReadBilling) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractReadBilling> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractReadBilling>{};
    }

    return json.entries.fold(<String, ContractReadBilling>{},
        (Map<String, ContractReadBilling> previousValue, element) {
      final ContractReadBilling? object =
          ContractReadBilling.fromJson(element.value);
      if (object is ContractReadBilling) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractReadBilling-objects as value to a dart map
  static Map<String, List<ContractReadBilling>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractReadBilling>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractReadBilling>>(
          key, ContractReadBilling.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractReadBilling[adjustedCost=$adjustedCost, initialCost=$initialCost, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (adjustedCost != null) r'adjustedCost': adjustedCost,
      if (initialCost != null) r'initialCost': initialCost,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}

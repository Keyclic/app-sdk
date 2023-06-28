//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContractJsonhalReadBilling implements BillingJsonhalRead {
  /// Returns a new [ContractJsonhalReadBilling] instance.
  ContractJsonhalReadBilling({
    this.links,
    this.adjustedCost,
    this.initialCost,
    this.startDate,
  });

  /// Returns a new [ContractJsonhalReadBilling] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContractJsonhalReadBilling? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate = json[r'startDate'] is String
        ? DateTime.parse(json[r'startDate'])
        : null;
    if (startDate is DateTime && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return ContractJsonhalReadBilling(
      links: AssetJsonhalReadLinks.fromJson(json[r'_links']),
      adjustedCost: PriceJsonhalRead.fromJson(json[r'adjustedCost']),
      initialCost: PriceJsonhalRead.fromJson(json[r'initialCost']),
      startDate: startDate,
    );
  }

  AssetJsonhalReadLinks? links;

  PriceJsonhalRead? adjustedCost;

  PriceJsonhalRead? initialCost;

  /// The start date of the billing cycle for the customer's account, in ISO 8601 format.
  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContractJsonhalReadBilling &&
        other.links == links &&
        other.adjustedCost == adjustedCost &&
        other.initialCost == initialCost &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (adjustedCost == null ? 0 : adjustedCost.hashCode) +
      (initialCost == null ? 0 : initialCost.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<ContractJsonhalReadBilling> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ContractJsonhalReadBilling>[];
    }

    return json.fold(<ContractJsonhalReadBilling>[],
        (List<ContractJsonhalReadBilling> previousValue, element) {
      final ContractJsonhalReadBilling? object =
          ContractJsonhalReadBilling.fromJson(element);
      if (object is ContractJsonhalReadBilling) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContractJsonhalReadBilling> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContractJsonhalReadBilling>{};
    }

    return json.entries.fold(<String, ContractJsonhalReadBilling>{},
        (Map<String, ContractJsonhalReadBilling> previousValue, element) {
      final ContractJsonhalReadBilling? object =
          ContractJsonhalReadBilling.fromJson(element.value);
      if (object is ContractJsonhalReadBilling) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContractJsonhalReadBilling-objects as value to a dart map
  static Map<String, List<ContractJsonhalReadBilling>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContractJsonhalReadBilling>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContractJsonhalReadBilling>>(
          key, ContractJsonhalReadBilling.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContractJsonhalReadBilling[links=$links, adjustedCost=$adjustedCost, initialCost=$initialCost, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (adjustedCost != null) r'adjustedCost': adjustedCost,
      if (initialCost != null) r'initialCost': initialCost,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}

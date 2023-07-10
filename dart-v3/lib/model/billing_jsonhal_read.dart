//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BillingJsonhalRead {
  /// Returns a new [BillingJsonhalRead] instance.
  BillingJsonhalRead({
    this.links,
    this.adjustedCost,
    this.initialCost,
    this.startDate,
  });

  /// Returns a new [BillingJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BillingJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate =
        json[r'startDate'] == null ? null : DateTime.parse(json[r'startDate']);
    if (startDate != null && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return BillingJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      adjustedCost: PriceJsonhalRead.fromJson(json[r'adjustedCost']),
      initialCost: PriceJsonhalRead.fromJson(json[r'initialCost']),
      startDate: startDate,
    );
  }

  AssetTypeJsonhalReadLinks? links;

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

    return other is BillingJsonhalRead &&
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

  static List<BillingJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BillingJsonhalRead>[];
    }

    return json.fold(<BillingJsonhalRead>[],
        (List<BillingJsonhalRead> previousValue, element) {
      final BillingJsonhalRead? object = BillingJsonhalRead.fromJson(element);
      if (object is BillingJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BillingJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BillingJsonhalRead>{};
    }

    return json.entries.fold(<String, BillingJsonhalRead>{},
        (Map<String, BillingJsonhalRead> previousValue, element) {
      final BillingJsonhalRead? object =
          BillingJsonhalRead.fromJson(element.value);
      if (object is BillingJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BillingJsonhalRead-objects as value to a dart map
  static Map<String, List<BillingJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BillingJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BillingJsonhalRead>>(
          key, BillingJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BillingJsonhalRead[links=$links, adjustedCost=$adjustedCost, initialCost=$initialCost, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (adjustedCost != null) r'adjustedCost': adjustedCost,
      if (initialCost != null) r'initialCost': initialCost,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}
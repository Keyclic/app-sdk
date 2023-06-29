//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BillingData {
  /// Returns a new [BillingData] instance.
  BillingData({
    this.initialCost,
    this.startDate,
  });

  /// Returns a new [BillingData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BillingData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate = json[r'startDate'] is String
        ? DateTime.parse(json[r'startDate'])
        : null;
    if (startDate is DateTime && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return BillingData(
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

    return other is BillingData &&
        other.initialCost == initialCost &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (initialCost == null ? 0 : initialCost.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<BillingData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BillingData>[];
    }

    return json.fold(<BillingData>[],
        (List<BillingData> previousValue, element) {
      final BillingData? object = BillingData.fromJson(element);
      if (object is BillingData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BillingData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BillingData>{};
    }

    return json.entries.fold(<String, BillingData>{},
        (Map<String, BillingData> previousValue, element) {
      final BillingData? object = BillingData.fromJson(element.value);
      if (object is BillingData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BillingData-objects as value to a dart map
  static Map<String, List<BillingData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BillingData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BillingData>>(
          key, BillingData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BillingData[initialCost=$initialCost, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (initialCost != null) r'initialCost': initialCost,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}

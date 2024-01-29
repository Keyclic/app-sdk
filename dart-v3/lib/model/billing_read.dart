//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BillingRead {
  /// Returns a new [BillingRead] instance.
  BillingRead({
    this.adjustedCost,
    this.initialCost,
    this.startDate,
  });

  /// Returns a new [BillingRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BillingRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate =
        json[r'startDate'] == null ? null : DateTime.parse(json[r'startDate']);
    if (startDate != null && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return BillingRead(
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

    return other is BillingRead &&
        other.adjustedCost == adjustedCost &&
        other.initialCost == initialCost &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (adjustedCost == null ? 0 : adjustedCost.hashCode) +
      (initialCost == null ? 0 : initialCost.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<BillingRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BillingRead>[];
    }

    return json.fold(<BillingRead>[],
        (List<BillingRead> previousValue, element) {
      final BillingRead? object = BillingRead.fromJson(element);
      if (object is BillingRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BillingRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BillingRead>{};
    }

    return json.entries.fold(<String, BillingRead>{},
        (Map<String, BillingRead> previousValue, element) {
      final BillingRead? object = BillingRead.fromJson(element.value);
      if (object is BillingRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BillingRead-objects as value to a dart map
  static Map<String, List<BillingRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BillingRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BillingRead>>(
          key, BillingRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BillingRead[adjustedCost=$adjustedCost, initialCost=$initialCost, startDate=$startDate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^adjustedCost\.').hasMatch(key)))
        r'adjustedCost': adjustedCost?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^adjustedCost\.'))) {
            previousValue.add(element.split(RegExp(r'^adjustedCost\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^initialCost\.').hasMatch(key)))
        r'initialCost': initialCost?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^initialCost\.'))) {
            previousValue.add(element.split(RegExp(r'^initialCost\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'startDate'))
        r'startDate': startDate?.toUtc().toIso8601String(),
    };
  }
}

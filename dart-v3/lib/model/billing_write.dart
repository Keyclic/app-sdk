//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class BillingWrite {
  /// Returns a new [BillingWrite] instance.
  BillingWrite({
    this.initialCost,
    this.startDate,
  });

  /// Returns a new [BillingWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BillingWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? startDate =
        json[r'startDate'] == null ? null : DateTime.parse(json[r'startDate']);
    if (startDate != null && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return BillingWrite(
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

    return other is BillingWrite &&
        other.initialCost == initialCost &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (initialCost == null ? 0 : initialCost.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<BillingWrite> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <BillingWrite>[];
    }

    return json.fold(<BillingWrite>[],
        (List<BillingWrite> previousValue, element) {
      final BillingWrite? object = BillingWrite.fromJson(element);
      if (object is BillingWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BillingWrite> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BillingWrite>{};
    }

    return json.entries.fold(<String, BillingWrite>{},
        (Map<String, BillingWrite> previousValue, element) {
      final BillingWrite? object = BillingWrite.fromJson(element.value);
      if (object is BillingWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BillingWrite-objects as value to a dart map
  static Map<String, List<BillingWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BillingWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BillingWrite>>(
          key, BillingWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BillingWrite[initialCost=$initialCost, startDate=$startDate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
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

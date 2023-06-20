//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WarrantyRead {
  /// Returns a new [WarrantyRead] instance.
  WarrantyRead({
    this.period,
    this.startDate,
  });

  /// Returns a new [WarrantyRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WarrantyRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate = json[r'startDate'] is String
        ? DateTime.parse(json[r'startDate'])
        : null;
    if (startDate is DateTime && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return WarrantyRead(
      period: json[r'period'],
      startDate: startDate,
    );
  }

  String? period;

  /// The start date of the warranty, in ISO 8601 format.
  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WarrantyRead &&
        other.period == period &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (period == null ? 0 : period.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<WarrantyRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WarrantyRead>[];
    }

    return json.fold(<WarrantyRead>[],
        (List<WarrantyRead> previousValue, element) {
      final WarrantyRead? object = WarrantyRead.fromJson(element);
      if (object is WarrantyRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WarrantyRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WarrantyRead>{};
    }

    return json.entries.fold(<String, WarrantyRead>{},
        (Map<String, WarrantyRead> previousValue, element) {
      final WarrantyRead? object = WarrantyRead.fromJson(element.value);
      if (object is WarrantyRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WarrantyRead-objects as value to a dart map
  static Map<String, List<WarrantyRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WarrantyRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WarrantyRead>>(
          key, WarrantyRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'WarrantyRead[period=$period, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (period != null) r'period': period,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}

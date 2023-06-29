//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WarrantyData {
  /// Returns a new [WarrantyData] instance.
  WarrantyData({
    this.duration,
    this.startDate,
  });

  /// Returns a new [WarrantyData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WarrantyData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate = json[r'startDate'] is String
        ? DateTime.parse(json[r'startDate'])
        : null;
    if (startDate is DateTime && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return WarrantyData(
      duration: json[r'duration'],
      startDate: startDate,
    );
  }

  /// The duration of the warranty in ISO 8601 duration format.
  String? duration;

  /// The start date of the warranty, in ISO 8601 format.
  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WarrantyData &&
        other.duration == duration &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<WarrantyData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <WarrantyData>[];
    }

    return json.fold(<WarrantyData>[],
        (List<WarrantyData> previousValue, element) {
      final WarrantyData? object = WarrantyData.fromJson(element);
      if (object is WarrantyData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WarrantyData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WarrantyData>{};
    }

    return json.entries.fold(<String, WarrantyData>{},
        (Map<String, WarrantyData> previousValue, element) {
      final WarrantyData? object = WarrantyData.fromJson(element.value);
      if (object is WarrantyData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WarrantyData-objects as value to a dart map
  static Map<String, List<WarrantyData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WarrantyData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WarrantyData>>(
          key, WarrantyData.listFromJson(value));
    });
  }

  @override
  String toString() => 'WarrantyData[duration=$duration, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (duration != null) r'duration': duration,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}

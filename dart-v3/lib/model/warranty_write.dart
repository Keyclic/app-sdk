//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WarrantyWrite {
  /// Returns a new [WarrantyWrite] instance.
  WarrantyWrite({
    this.duration,
    this.startDate,
  });

  /// Returns a new [WarrantyWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WarrantyWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return WarrantyWrite(
      duration: json[r'duration'],
      startDate: mapToDateTime(json[r'startDate']),
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

    return other is WarrantyWrite &&
        other.duration == duration &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<WarrantyWrite> listFromJson(Iterable? json) {
    if (json == null) {
      return <WarrantyWrite>[];
    }

    return json.fold(<WarrantyWrite>[],
        (List<WarrantyWrite> previousValue, element) {
      final WarrantyWrite? object = WarrantyWrite.fromJson(element);
      if (object is WarrantyWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WarrantyWrite> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WarrantyWrite>{};
    }

    return json.entries.fold(<String, WarrantyWrite>{},
        (Map<String, WarrantyWrite> previousValue, element) {
      final WarrantyWrite? object = WarrantyWrite.fromJson(element.value);
      if (object is WarrantyWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WarrantyWrite-objects as value to a dart map
  static Map<String, List<WarrantyWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WarrantyWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WarrantyWrite>>(
          key, WarrantyWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WarrantyWrite[duration=$duration, startDate=$startDate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'duration')) r'duration': duration,
      if (keys == null || keys.contains(r'startDate'))
        r'startDate': startDate?.toUtc().toIso8601String(),
    };
  }
}

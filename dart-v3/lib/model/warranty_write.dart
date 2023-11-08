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
  static WarrantyWrite? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate =
        json[r'startDate'] == null ? null : DateTime.parse(json[r'startDate']);
    if (startDate != null && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return WarrantyWrite(
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

    return other is WarrantyWrite &&
        other.duration == duration &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<WarrantyWrite> listFromJson(Iterable<dynamic>? json) {
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && duration != null) ||
          (keys?.contains(r'duration') ?? false))
        r'duration': duration,
      if ((keys == null && startDate != null) ||
          (keys?.contains(r'startDate') ?? false))
        r'startDate': startDate?.toUtc().toIso8601String(),
    };
  }
}

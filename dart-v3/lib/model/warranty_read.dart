//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WarrantyRead {
  /// Returns a new [WarrantyRead] instance.
  WarrantyRead({
    this.duration,
    this.endDate,
    this.startDate,
  });

  /// Returns a new [WarrantyRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WarrantyRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? endDate =
        json[r'endDate'] == null ? null : DateTime.parse(json[r'endDate']);
    if (endDate != null && endDate.isUtc == false) {
      endDate = DateTime.parse('${json[r'endDate']}Z');
    }

    DateTime? startDate =
        json[r'startDate'] == null ? null : DateTime.parse(json[r'startDate']);
    if (startDate != null && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return WarrantyRead(
      duration: json[r'duration'],
      endDate: endDate,
      startDate: startDate,
    );
  }

  /// The duration of the warranty in ISO 8601 duration format.
  String? duration;

  /// The end date of the warranty, in ISO 8601 format.
  final DateTime? endDate;

  /// The start date of the warranty, in ISO 8601 format.
  DateTime? startDate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is WarrantyRead &&
        other.duration == duration &&
        other.endDate == endDate &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (duration == null ? 0 : duration.hashCode) +
      (endDate == null ? 0 : endDate.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<WarrantyRead> listFromJson(Iterable<dynamic>? json) {
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
  String toString() =>
      'WarrantyRead[duration=$duration, endDate=$endDate, startDate=$startDate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && duration != null) ||
          (keys?.contains(r'duration') ?? false))
        r'duration': duration,
      if ((keys == null && endDate != null) ||
          (keys?.contains(r'endDate') ?? false))
        r'endDate': endDate?.toUtc().toIso8601String(),
      if ((keys == null && startDate != null) ||
          (keys?.contains(r'startDate') ?? false))
        r'startDate': startDate?.toUtc().toIso8601String(),
    };
  }
}

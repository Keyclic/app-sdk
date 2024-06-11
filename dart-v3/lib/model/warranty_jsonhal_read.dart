//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WarrantyJsonhalRead {
  /// Returns a new [WarrantyJsonhalRead] instance.
  WarrantyJsonhalRead({
    this.links,
    this.duration,
    this.endDate,
    this.startDate,
  });

  /// Returns a new [WarrantyJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WarrantyJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return WarrantyJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      duration: json[r'duration'],
      endDate: mapToDateTime(json[r'endDate']),
      startDate: mapToDateTime(json[r'startDate']),
    );
  }

  AssetTypeJsonhalReadLinks? links;

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

    return other is WarrantyJsonhalRead &&
        other.links == links &&
        other.duration == duration &&
        other.endDate == endDate &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (duration == null ? 0 : duration.hashCode) +
      (endDate == null ? 0 : endDate.hashCode) +
      (startDate == null ? 0 : startDate.hashCode);

  static List<WarrantyJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <WarrantyJsonhalRead>[];
    }

    return json.fold(<WarrantyJsonhalRead>[],
        (List<WarrantyJsonhalRead> previousValue, element) {
      final WarrantyJsonhalRead? object = WarrantyJsonhalRead.fromJson(element);
      if (object is WarrantyJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, WarrantyJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, WarrantyJsonhalRead>{};
    }

    return json.entries.fold(<String, WarrantyJsonhalRead>{},
        (Map<String, WarrantyJsonhalRead> previousValue, element) {
      final WarrantyJsonhalRead? object =
          WarrantyJsonhalRead.fromJson(element.value);
      if (object is WarrantyJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of WarrantyJsonhalRead-objects as value to a dart map
  static Map<String, List<WarrantyJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<WarrantyJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<WarrantyJsonhalRead>>(
          key, WarrantyJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'WarrantyJsonhalRead[links=$links, duration=$duration, endDate=$endDate, startDate=$startDate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'duration')) r'duration': duration,
      if (keys == null || keys.contains(r'endDate'))
        r'endDate': endDate?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'startDate'))
        r'startDate': startDate?.toUtc().toIso8601String(),
    };
  }
}

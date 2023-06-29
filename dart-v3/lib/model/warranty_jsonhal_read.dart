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
  static WarrantyJsonhalRead? fromJson(Map<String, dynamic>? json) {
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

    return WarrantyJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      duration: json[r'duration'],
      endDate: endDate,
      startDate: startDate,
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

  static List<WarrantyJsonhalRead> listFromJson(List<dynamic>? json) {
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

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (duration != null) r'duration': duration,
      if (endDate != null) r'endDate': endDate!.toUtc().toIso8601String(),
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}

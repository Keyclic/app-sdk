//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class WarrantyJsonhalRead {
  /// Returns a new [WarrantyJsonhalRead] instance.
  WarrantyJsonhalRead({
    this.links,
    this.period,
    this.startDate,
  });

  /// Returns a new [WarrantyJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WarrantyJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? startDate = json[r'startDate'] is String
        ? DateTime.parse(json[r'startDate'])
        : null;
    if (startDate is DateTime && startDate.isUtc == false) {
      startDate = DateTime.parse('${json[r'startDate']}Z');
    }

    return WarrantyJsonhalRead(
      links: AssetJsonhalReadLinks.fromJson(json[r'_links']),
      period: json[r'period'],
      startDate: startDate,
    );
  }

  AssetJsonhalReadLinks? links;

  String? period;

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
        other.period == period &&
        other.startDate == startDate;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (period == null ? 0 : period.hashCode) +
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
      'WarrantyJsonhalRead[links=$links, period=$period, startDate=$startDate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (period != null) r'period': period,
      if (startDate != null) r'startDate': startDate!.toUtc().toIso8601String(),
    };
  }
}

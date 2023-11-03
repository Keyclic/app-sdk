//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleData {
  /// Returns a new [RuleData] instance.
  RuleData({
    this.category,
    required this.dispatcher,
    this.place,
    this.position,
    required this.service,
  });

  /// Returns a new [RuleData] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleData? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleData(
      category: json[r'category'],
      dispatcher: json[r'dispatcher'],
      place: json[r'place'],
      position: json[r'position'] == null ? null : json[r'position'].toDouble(),
      service: json[r'service'],
    );
  }

  String? category;

  String dispatcher;

  String? place;

  num? position;

  String service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleData &&
        other.category == category &&
        other.dispatcher == dispatcher &&
        other.place == place &&
        other.position == position &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      dispatcher.hashCode +
      (place == null ? 0 : place.hashCode) +
      (position == null ? 0 : position.hashCode) +
      service.hashCode;

  static List<RuleData> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleData>[];
    }

    return json.fold(<RuleData>[], (List<RuleData> previousValue, element) {
      final RuleData? object = RuleData.fromJson(element);
      if (object is RuleData) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RuleData> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleData>{};
    }

    return json.entries.fold(<String, RuleData>{},
        (Map<String, RuleData> previousValue, element) {
      final RuleData? object = RuleData.fromJson(element.value);
      if (object is RuleData) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RuleData-objects as value to a dart map
  static Map<String, List<RuleData>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RuleData>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RuleData>>(
          key, RuleData.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RuleData[category=$category, dispatcher=$dispatcher, place=$place, position=$position, service=$service]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && category != null) ||
          (keys?.contains(r'category') ?? false))
        r'category': category,
      r'dispatcher': dispatcher,
      if ((keys == null && place != null) ||
          (keys?.contains(r'place') ?? false))
        r'place': place,
      if ((keys == null && position != null) ||
          (keys?.contains(r'position') ?? false))
        r'position': position,
      r'service': service,
    };
  }
}

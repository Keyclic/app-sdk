//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RulePatch {
  /// Returns a new [RulePatch] instance.
  RulePatch({
    this.category,
    this.place,
    this.service,
  });

  /// Returns a new [RulePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RulePatch? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return RulePatch(
      category: json[r'category'],
      place: json[r'place'],
      service: json[r'service'],
    );
  }

  String? category;

  String? place;

  String? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RulePatch &&
        other.category == category &&
        other.place == place &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<RulePatch> listFromJson(Iterable? json) {
    if (json == null) {
      return <RulePatch>[];
    }

    return json.fold(<RulePatch>[], (List<RulePatch> previousValue, element) {
      final RulePatch? object = RulePatch.fromJson(element);
      if (object is RulePatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, RulePatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RulePatch>{};
    }

    return json.entries.fold(<String, RulePatch>{},
        (Map<String, RulePatch> previousValue, element) {
      final RulePatch? object = RulePatch.fromJson(element.value);
      if (object is RulePatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of RulePatch-objects as value to a dart map
  static Map<String, List<RulePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<RulePatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<RulePatch>>(
          key, RulePatch.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'RulePatch[category=$category, place=$place, service=$service]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'category')) r'category': category,
      if (keys == null || keys.contains(r'place')) r'place': place,
      if (keys == null || keys.contains(r'service')) r'service': service,
    };
  }
}

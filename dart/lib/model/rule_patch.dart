//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RulePatch {
  /// Returns a new [RulePatch] instance.
  RulePatch({
    this.category,
    this.service,
  });

  /// Returns a new [RulePatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RulePatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RulePatch(
      category: json[r'category'],
      service: json[r'service'],
    );
  }

  String? category;

  String? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RulePatch &&
        other.category == category &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<RulePatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RulePatch>[];
    }
    return json
        .map((value) {
          return RulePatch.fromJson(value);
        })
        .whereType<RulePatch>()
        .toList();
  }

  static Map<String, RulePatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RulePatch>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, RulePatch?>(key, RulePatch.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, RulePatch>;
  }

  // maps a json object with a list of RulePatch-objects as value to a dart map
  static Map<String, List<RulePatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<RulePatch>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: RulePatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'RulePatch[category=$category, service=$service]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (category != null) r'category': category,
      if (service != null) r'service': service,
    };
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class RuleEmbedded {
  /// Returns a new [RuleEmbedded] instance.
  RuleEmbedded({
    this.category,
    this.service,
  });

  /// Returns a new [RuleEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static RuleEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return RuleEmbedded(
      category: Category.fromJson(json[r'category']),
      service: InternalService.fromJson(json[r'service']),
    );
  }

  Category? category;

  InternalService? service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is RuleEmbedded &&
        other.category == category &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<RuleEmbedded> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <RuleEmbedded>[];
    }
    return json
        .map((value) {
          return RuleEmbedded.fromJson(value);
        })
        .whereType<RuleEmbedded>()
        .toList();
  }

  static Map<String, RuleEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, RuleEmbedded>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, RuleEmbedded?>(key, RuleEmbedded.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, RuleEmbedded>;
  }

  // maps a json object with a list of RuleEmbedded-objects as value to a dart map
  static Map<String, List<RuleEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<RuleEmbedded>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: RuleEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'RuleEmbedded[category=$category, service=$service]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (category != null) r'category': category,
      if (service != null) r'service': service,
    };
  }
}

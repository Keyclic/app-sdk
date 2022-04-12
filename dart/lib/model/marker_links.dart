//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MarkerLinks {
  /// Returns a new [MarkerLinks] instance.
  MarkerLinks({
    this.plan,
    this.self,
  });

  /// Returns a new [MarkerLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MarkerLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MarkerLinks(
      plan: MarkerLinksPlan.fromJson(json[r'plan']),
      self: MarkerLinksSelf.fromJson(json[r'self']),
    );
  }

  MarkerLinksPlan? plan;

  MarkerLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MarkerLinks && other.plan == plan && other.self == self;
  }

  @override
  int get hashCode =>
      (plan == null ? 0 : plan.hashCode) + (self == null ? 0 : self.hashCode);

  static List<MarkerLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MarkerLinks>[];
    }
    return json
        .map((value) {
          return MarkerLinks.fromJson(value);
        })
        .whereType<MarkerLinks>()
        .toList();
  }

  static Map<String, MarkerLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MarkerLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MarkerLinks?>(key, MarkerLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MarkerLinks>;
  }

  // maps a json object with a list of MarkerLinks-objects as value to a dart map
  static Map<String, List<MarkerLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MarkerLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MarkerLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MarkerLinks[plan=$plan, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (plan != null) r'plan': plan,
      if (self != null) r'self': self,
    };
  }
}

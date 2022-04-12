//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionLinks {
  /// Returns a new [SectionLinks] instance.
  SectionLinks({
    this.self,
  });

  /// Returns a new [SectionLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SectionLinks(
      self: SectionLinksSelf.fromJson(json[r'self']),
    );
  }

  SectionLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionLinks && other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<SectionLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <SectionLinks>[];
    }
    return json
        .map((value) {
          return SectionLinks.fromJson(value);
        })
        .whereType<SectionLinks>()
        .toList();
  }

  static Map<String, SectionLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, SectionLinks?>(key, SectionLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, SectionLinks>;
  }

  // maps a json object with a list of SectionLinks-objects as value to a dart map
  static Map<String, List<SectionLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<SectionLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: SectionLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'SectionLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}

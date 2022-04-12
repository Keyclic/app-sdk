//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class KnowledgeBaseLinks {
  /// Returns a new [KnowledgeBaseLinks] instance.
  KnowledgeBaseLinks({
    this.self,
  });

  /// Returns a new [KnowledgeBaseLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static KnowledgeBaseLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return KnowledgeBaseLinks(
      self: KnowledgeBaseLinksSelf.fromJson(json[r'self']),
    );
  }

  KnowledgeBaseLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is KnowledgeBaseLinks && other.self == self;
  }

  @override
  int get hashCode => (self == null ? 0 : self.hashCode);

  static List<KnowledgeBaseLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <KnowledgeBaseLinks>[];
    }
    return json
        .map((value) {
          return KnowledgeBaseLinks.fromJson(value);
        })
        .whereType<KnowledgeBaseLinks>()
        .toList();
  }

  static Map<String, KnowledgeBaseLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, KnowledgeBaseLinks>{};
    }

    final map = json.map((key, value) => MapEntry<String, KnowledgeBaseLinks?>(
        key, KnowledgeBaseLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, KnowledgeBaseLinks>;
  }

  // maps a json object with a list of KnowledgeBaseLinks-objects as value to a dart map
  static Map<String, List<KnowledgeBaseLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<KnowledgeBaseLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: KnowledgeBaseLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'KnowledgeBaseLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}

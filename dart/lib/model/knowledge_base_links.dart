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

    return json.fold(<KnowledgeBaseLinks>[],
        (List<KnowledgeBaseLinks> previousValue, element) {
      final KnowledgeBaseLinks? object = KnowledgeBaseLinks.fromJson(element);
      if (object is KnowledgeBaseLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, KnowledgeBaseLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, KnowledgeBaseLinks>{};
    }

    return json.entries.fold(<String, KnowledgeBaseLinks>{},
        (Map<String, KnowledgeBaseLinks> previousValue, element) {
      final KnowledgeBaseLinks? object =
          KnowledgeBaseLinks.fromJson(element.value);
      if (object is KnowledgeBaseLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of KnowledgeBaseLinks-objects as value to a dart map
  static Map<String, List<KnowledgeBaseLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<KnowledgeBaseLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<KnowledgeBaseLinks>>(
          key, KnowledgeBaseLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'KnowledgeBaseLinks[self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (self != null) r'self': self,
    };
  }
}

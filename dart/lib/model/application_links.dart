//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationLinks {
  /// Returns a new [ApplicationLinks] instance.
  ApplicationLinks({
    this.knowledgeBase,
    this.self,
  });

  /// Returns a new [ApplicationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinks(
      knowledgeBase:
          ApplicationLinksKnowledgeBase.fromJson(json[r'knowledgeBase']),
      self: ApplicationLinksSelf.fromJson(json[r'self']),
    );
  }

  ApplicationLinksKnowledgeBase knowledgeBase;

  ApplicationLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinks &&
        other.knowledgeBase == knowledgeBase &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (knowledgeBase == null ? 0 : knowledgeBase.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<ApplicationLinks> listFromJson(List<dynamic> json) {
    return <ApplicationLinks>[
      if (json is List)
        for (dynamic value in json) ApplicationLinks.fromJson(value),
    ];
  }

  static Map<String, ApplicationLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, ApplicationLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationLinks-objects as value to a dart map
  static Map<String, List<ApplicationLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ApplicationLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ApplicationLinks[knowledgeBase=$knowledgeBase, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (knowledgeBase != null) r'knowledgeBase': knowledgeBase,
      if (self != null) r'self': self,
    };
  }
}

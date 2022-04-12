//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceLinks {
  /// Returns a new [InternalServiceLinks] instance.
  InternalServiceLinks({
    this.organization,
    this.self,
  });

  /// Returns a new [InternalServiceLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinks(
      organization:
          InternalServiceLinksOrganization.fromJson(json[r'organization']),
      self: InternalServiceLinksSelf.fromJson(json[r'self']),
    );
  }

  InternalServiceLinksOrganization? organization;

  InternalServiceLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceLinks &&
        other.organization == organization &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (organization == null ? 0 : organization.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<InternalServiceLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceLinks>[];
    }
    return json
        .map((value) {
          return InternalServiceLinks.fromJson(value);
        })
        .whereType<InternalServiceLinks>()
        .toList();
  }

  static Map<String, InternalServiceLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InternalServiceLinks?>(
            key, InternalServiceLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InternalServiceLinks>;
  }

  // maps a json object with a list of InternalServiceLinks-objects as value to a dart map
  static Map<String, List<InternalServiceLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InternalServiceLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InternalServiceLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceLinks[organization=$organization, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (organization != null) r'organization': organization,
      if (self != null) r'self': self,
    };
  }
}

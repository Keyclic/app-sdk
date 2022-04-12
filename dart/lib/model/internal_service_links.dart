//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InternalServiceLinks {
  /// Returns a new [InternalServiceLinks] instance.
  InternalServiceLinks({
    this.organization,
    this.self,
  });

  /// Returns a new [InternalServiceLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InternalServiceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinks(
      organization:
          InternalServiceLinksOrganization.fromJson(json[r'organization']),
      self: InternalServiceLinksSelf.fromJson(json[r'self']),
    );
  }

  InternalServiceLinksOrganization organization;

  InternalServiceLinksSelf self;

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

  static List<InternalServiceLinks> listFromJson(List<dynamic> json) {
    return <InternalServiceLinks>[
      if (json is List)
        for (dynamic value in json) InternalServiceLinks.fromJson(value),
    ];
  }

  static Map<String, InternalServiceLinks> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InternalServiceLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: InternalServiceLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InternalServiceLinks-objects as value to a dart map
  static Map<String, List<InternalServiceLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<InternalServiceLinks>>{
      if (json is Map)
        for (final entry in json.entries)
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

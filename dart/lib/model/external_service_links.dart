//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServiceLinks {
  /// Returns a new [ExternalServiceLinks] instance.
  ExternalServiceLinks({
    this.provider,
    this.self,
  });

  /// Returns a new [ExternalServiceLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServiceLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinks(
      provider: ExternalServiceLinksProvider.fromJson(json[r'provider']),
      self: ExternalServiceLinksSelf.fromJson(json[r'self']),
    );
  }

  ExternalServiceLinksProvider provider;

  ExternalServiceLinksSelf self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinks &&
        other.provider == provider &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (provider == null ? 0 : provider.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<ExternalServiceLinks> listFromJson(List<dynamic> json) {
    return <ExternalServiceLinks>[
      if (json is List)
        for (dynamic value in json) ExternalServiceLinks.fromJson(value),
    ];
  }

  static Map<String, ExternalServiceLinks> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServiceLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServiceLinks-objects as value to a dart map
  static Map<String, List<ExternalServiceLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServiceLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ExternalServiceLinks[provider=$provider, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (provider != null) r'provider': provider,
      if (self != null) r'self': self,
    };
  }
}

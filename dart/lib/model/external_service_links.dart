//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinks {
  /// Returns a new [ExternalServiceLinks] instance.
  ExternalServiceLinks({
    this.provider,
    this.self,
  });

  /// Returns a new [ExternalServiceLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceLinks(
      provider: ExternalServiceLinksProvider.fromJson(json[r'provider']),
      self: ExternalServiceLinksSelf.fromJson(json[r'self']),
    );
  }

  ExternalServiceLinksProvider? provider;

  ExternalServiceLinksSelf? self;

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

  static List<ExternalServiceLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ExternalServiceLinks>[];
    }
    return json
        .map((value) {
          return ExternalServiceLinks.fromJson(value);
        })
        .whereType<ExternalServiceLinks>()
        .toList();
  }

  static Map<String, ExternalServiceLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinks>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServiceLinks?>(
            key, ExternalServiceLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServiceLinks>;
  }

  // maps a json object with a list of ExternalServiceLinks-objects as value to a dart map
  static Map<String, List<ExternalServiceLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ExternalServiceLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
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

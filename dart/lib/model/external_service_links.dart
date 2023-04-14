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

    return json.fold(<ExternalServiceLinks>[],
        (List<ExternalServiceLinks> previousValue, element) {
      final ExternalServiceLinks? object =
          ExternalServiceLinks.fromJson(element);
      if (object is ExternalServiceLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinks>{};
    }

    return json.entries.fold(<String, ExternalServiceLinks>{},
        (Map<String, ExternalServiceLinks> previousValue, element) {
      final ExternalServiceLinks? object =
          ExternalServiceLinks.fromJson(element.value);
      if (object is ExternalServiceLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceLinks-objects as value to a dart map
  static Map<String, List<ExternalServiceLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceLinks>>(
          key, ExternalServiceLinks.listFromJson(value));
    });
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

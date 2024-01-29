//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationJsonhalIntegrationReadLinks {
  /// Returns a new [IntegrationJsonhalIntegrationReadLinks] instance.
  IntegrationJsonhalIntegrationReadLinks({
    this.self,
    this.connector,
    this.organization,
  });

  /// Returns a new [IntegrationJsonhalIntegrationReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationJsonhalIntegrationReadLinks? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return IntegrationJsonhalIntegrationReadLinks(
      self: GetAssetTypeCollection200ResponseLinksFirst.fromJson(json[r'self']),
      connector: GetAssetTypeCollection200ResponseLinksFirst.fromJson(
          json[r'connector']),
      organization: GetAssetTypeCollection200ResponseLinksFirst.fromJson(
          json[r'organization']),
    );
  }

  GetAssetTypeCollection200ResponseLinksFirst? self;

  GetAssetTypeCollection200ResponseLinksFirst? connector;

  GetAssetTypeCollection200ResponseLinksFirst? organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationJsonhalIntegrationReadLinks &&
        other.self == self &&
        other.connector == connector &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (connector == null ? 0 : connector.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<IntegrationJsonhalIntegrationReadLinks> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <IntegrationJsonhalIntegrationReadLinks>[];
    }

    return json.fold(<IntegrationJsonhalIntegrationReadLinks>[],
        (List<IntegrationJsonhalIntegrationReadLinks> previousValue, element) {
      final IntegrationJsonhalIntegrationReadLinks? object =
          IntegrationJsonhalIntegrationReadLinks.fromJson(element);
      if (object is IntegrationJsonhalIntegrationReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationJsonhalIntegrationReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationJsonhalIntegrationReadLinks>{};
    }

    return json.entries.fold(<String, IntegrationJsonhalIntegrationReadLinks>{},
        (Map<String, IntegrationJsonhalIntegrationReadLinks> previousValue,
            element) {
      final IntegrationJsonhalIntegrationReadLinks? object =
          IntegrationJsonhalIntegrationReadLinks.fromJson(element.value);
      if (object is IntegrationJsonhalIntegrationReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationJsonhalIntegrationReadLinks-objects as value to a dart map
  static Map<String, List<IntegrationJsonhalIntegrationReadLinks>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationJsonhalIntegrationReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationJsonhalIntegrationReadLinks>>(
          key, IntegrationJsonhalIntegrationReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationJsonhalIntegrationReadLinks[self=$self, connector=$connector, organization=$organization]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
      if ((keys == null && connector != null) ||
          (keys?.contains(r'connector') ?? false))
        r'connector': connector?.toJson(),
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization?.toJson(),
    };
  }
}

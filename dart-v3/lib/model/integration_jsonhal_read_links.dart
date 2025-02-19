//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationJsonhalReadLinks {
  /// Returns a new [IntegrationJsonhalReadLinks] instance.
  IntegrationJsonhalReadLinks({
    this.self,
    this.connector,
    this.organization,
  });

  /// Returns a new [IntegrationJsonhalReadLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationJsonhalReadLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return IntegrationJsonhalReadLinks(
      self: GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'self']),
      connector:
          GetPlaceCollection200ResponseLinksSelf.fromJson(json[r'connector']),
      organization: GetPlaceCollection200ResponseLinksSelf.fromJson(
          json[r'organization']),
    );
  }

  GetPlaceCollection200ResponseLinksSelf? self;

  GetPlaceCollection200ResponseLinksSelf? connector;

  GetPlaceCollection200ResponseLinksSelf? organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationJsonhalReadLinks &&
        other.self == self &&
        other.connector == connector &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (self == null ? 0 : self.hashCode) +
      (connector == null ? 0 : connector.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<IntegrationJsonhalReadLinks> listFromJson(Iterable? json) {
    if (json == null) {
      return <IntegrationJsonhalReadLinks>[];
    }

    return json.fold(<IntegrationJsonhalReadLinks>[],
        (List<IntegrationJsonhalReadLinks> previousValue, element) {
      final IntegrationJsonhalReadLinks? object =
          IntegrationJsonhalReadLinks.fromJson(element);
      if (object is IntegrationJsonhalReadLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationJsonhalReadLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationJsonhalReadLinks>{};
    }

    return json.entries.fold(<String, IntegrationJsonhalReadLinks>{},
        (Map<String, IntegrationJsonhalReadLinks> previousValue, element) {
      final IntegrationJsonhalReadLinks? object =
          IntegrationJsonhalReadLinks.fromJson(element.value);
      if (object is IntegrationJsonhalReadLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationJsonhalReadLinks-objects as value to a dart map
  static Map<String, List<IntegrationJsonhalReadLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationJsonhalReadLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationJsonhalReadLinks>>(
          key, IntegrationJsonhalReadLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationJsonhalReadLinks[self=$self, connector=$connector, organization=$organization]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^connector\.').hasMatch(key)))
        r'connector': connector?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^connector\.'))) {
            previousValue.add(element.split(RegExp(r'^connector\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
    };
  }
}

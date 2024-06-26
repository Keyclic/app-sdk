//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksProvider {
  /// Returns a new [ExternalServiceLinksProvider] instance.
  ExternalServiceLinksProvider({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ExternalServiceLinksProvider] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksProvider? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExternalServiceLinksProvider(
      href: json[r'href'],
      iriTemplate: ExternalServiceLinksProviderIriTemplate.fromJson(
          json[r'iriTemplate']),
    );
  }

  /// The URI of the provider associated to the given externalservice.
  String? href;

  ExternalServiceLinksProviderIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksProvider &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ExternalServiceLinksProvider> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExternalServiceLinksProvider>[];
    }

    return json.fold(<ExternalServiceLinksProvider>[],
        (List<ExternalServiceLinksProvider> previousValue, element) {
      final ExternalServiceLinksProvider? object =
          ExternalServiceLinksProvider.fromJson(element);
      if (object is ExternalServiceLinksProvider) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceLinksProvider> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksProvider>{};
    }

    return json.entries.fold(<String, ExternalServiceLinksProvider>{},
        (Map<String, ExternalServiceLinksProvider> previousValue, element) {
      final ExternalServiceLinksProvider? object =
          ExternalServiceLinksProvider.fromJson(element.value);
      if (object is ExternalServiceLinksProvider) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceLinksProvider-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksProvider>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceLinksProvider>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceLinksProvider>>(
          key, ExternalServiceLinksProvider.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServiceLinksProvider[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServiceLinksSelf {
  /// Returns a new [ExternalServiceLinksSelf] instance.
  ExternalServiceLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ExternalServiceLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServiceLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ExternalServiceLinksSelf(
      href: json[r'href'],
      iriTemplate:
          ExternalServiceLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given externalservice.
  String? href;

  ExternalServiceLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ExternalServiceLinksSelf> listFromJson(Iterable? json) {
    if (json == null) {
      return <ExternalServiceLinksSelf>[];
    }

    return json.fold(<ExternalServiceLinksSelf>[],
        (List<ExternalServiceLinksSelf> previousValue, element) {
      final ExternalServiceLinksSelf? object =
          ExternalServiceLinksSelf.fromJson(element);
      if (object is ExternalServiceLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServiceLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServiceLinksSelf>{};
    }

    return json.entries.fold(<String, ExternalServiceLinksSelf>{},
        (Map<String, ExternalServiceLinksSelf> previousValue, element) {
      final ExternalServiceLinksSelf? object =
          ExternalServiceLinksSelf.fromJson(element.value);
      if (object is ExternalServiceLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServiceLinksSelf-objects as value to a dart map
  static Map<String, List<ExternalServiceLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServiceLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServiceLinksSelf>>(
          key, ExternalServiceLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServiceLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationLinksSelf {
  /// Returns a new [ApplicationLinksSelf] instance.
  ApplicationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [ApplicationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ApplicationLinksSelf(
      href: json[r'href'],
      iriTemplate:
          ApplicationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given application.
  String? href;

  ApplicationLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<ApplicationLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ApplicationLinksSelf>[];
    }

    return json.fold(<ApplicationLinksSelf>[],
        (List<ApplicationLinksSelf> previousValue, element) {
      final ApplicationLinksSelf? object =
          ApplicationLinksSelf.fromJson(element);
      if (object is ApplicationLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationLinksSelf>{};
    }

    return json.entries.fold(<String, ApplicationLinksSelf>{},
        (Map<String, ApplicationLinksSelf> previousValue, element) {
      final ApplicationLinksSelf? object =
          ApplicationLinksSelf.fromJson(element.value);
      if (object is ApplicationLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationLinksSelf-objects as value to a dart map
  static Map<String, List<ApplicationLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationLinksSelf>>(
          key, ApplicationLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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

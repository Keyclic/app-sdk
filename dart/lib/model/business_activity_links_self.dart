//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class BusinessActivityLinksSelf {
  /// Returns a new [BusinessActivityLinksSelf] instance.
  BusinessActivityLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [BusinessActivityLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static BusinessActivityLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return BusinessActivityLinksSelf(
      href: json[r'href'],
      iriTemplate:
          BusinessActivityLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given businessactivity.
  String? href;

  BusinessActivityLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivityLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<BusinessActivityLinksSelf> listFromJson(Iterable? json) {
    if (json == null) {
      return <BusinessActivityLinksSelf>[];
    }

    return json.fold(<BusinessActivityLinksSelf>[],
        (List<BusinessActivityLinksSelf> previousValue, element) {
      final BusinessActivityLinksSelf? object =
          BusinessActivityLinksSelf.fromJson(element);
      if (object is BusinessActivityLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, BusinessActivityLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, BusinessActivityLinksSelf>{};
    }

    return json.entries.fold(<String, BusinessActivityLinksSelf>{},
        (Map<String, BusinessActivityLinksSelf> previousValue, element) {
      final BusinessActivityLinksSelf? object =
          BusinessActivityLinksSelf.fromJson(element.value);
      if (object is BusinessActivityLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of BusinessActivityLinksSelf-objects as value to a dart map
  static Map<String, List<BusinessActivityLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<BusinessActivityLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<BusinessActivityLinksSelf>>(
          key, BusinessActivityLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'BusinessActivityLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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

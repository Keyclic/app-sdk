//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class PublicationLinksSelf {
  /// Returns a new [PublicationLinksSelf] instance.
  PublicationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PublicationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PublicationLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : PublicationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given publication.
  String? href;

  PublicationLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PublicationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PublicationLinksSelf> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <PublicationLinksSelf>[];
    }

    return json.fold(<PublicationLinksSelf>[],
        (List<PublicationLinksSelf> previousValue, element) {
      final PublicationLinksSelf? object =
          PublicationLinksSelf.fromJson(element);
      if (object is PublicationLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, PublicationLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, PublicationLinksSelf>{};
    }

    return json.entries.fold(<String, PublicationLinksSelf>{},
        (Map<String, PublicationLinksSelf> previousValue, element) {
      final PublicationLinksSelf? object =
          PublicationLinksSelf.fromJson(element.value);
      if (object is PublicationLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of PublicationLinksSelf-objects as value to a dart map
  static Map<String, List<PublicationLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<PublicationLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<PublicationLinksSelf>>(
          key, PublicationLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'PublicationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}

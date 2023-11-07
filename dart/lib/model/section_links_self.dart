//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class SectionLinksSelf {
  /// Returns a new [SectionLinksSelf] instance.
  SectionLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [SectionLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static SectionLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return SectionLinksSelf(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : SectionLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given section.
  String? href;

  SectionLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<SectionLinksSelf> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <SectionLinksSelf>[];
    }

    return json.fold(<SectionLinksSelf>[],
        (List<SectionLinksSelf> previousValue, element) {
      final SectionLinksSelf? object = SectionLinksSelf.fromJson(element);
      if (object is SectionLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, SectionLinksSelf> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, SectionLinksSelf>{};
    }

    return json.entries.fold(<String, SectionLinksSelf>{},
        (Map<String, SectionLinksSelf> previousValue, element) {
      final SectionLinksSelf? object = SectionLinksSelf.fromJson(element.value);
      if (object is SectionLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of SectionLinksSelf-objects as value to a dart map
  static Map<String, List<SectionLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<SectionLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<SectionLinksSelf>>(
          key, SectionLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() => 'SectionLinksSelf[href=$href, iriTemplate=$iriTemplate]';

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

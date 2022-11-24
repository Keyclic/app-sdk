//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class PersonLinksSelf {
  /// Returns a new [PersonLinksSelf] instance.
  PersonLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [PersonLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory PersonLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PersonLinksSelf(
      href: json[r'href'],
      iriTemplate: PersonLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given person.
  String href;

  PersonLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PersonLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<PersonLinksSelf> listFromJson(List<dynamic> json) {
    return <PersonLinksSelf>[
      if (json is List)
        for (dynamic value in json) PersonLinksSelf.fromJson(value),
    ];
  }

  static Map<String, PersonLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, PersonLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of PersonLinksSelf-objects as value to a dart map
  static Map<String, List<PersonLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<PersonLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: PersonLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'PersonLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}

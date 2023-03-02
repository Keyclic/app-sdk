//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteLinksSelf {
  /// Returns a new [NoteLinksSelf] instance.
  NoteLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [NoteLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelf(
      href: json[r'href'],
      iriTemplate: NoteLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given note.
  String href;

  NoteLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<NoteLinksSelf> listFromJson(List<dynamic> json) {
    return <NoteLinksSelf>[
      if (json is List)
        for (dynamic value in json) NoteLinksSelf.fromJson(value),
    ];
  }

  static Map<String, NoteLinksSelf> mapFromJson(Map<String, dynamic> json) {
    return <String, NoteLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteLinksSelf-objects as value to a dart map
  static Map<String, List<NoteLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}

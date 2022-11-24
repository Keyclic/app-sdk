//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentLinksSelf {
  /// Returns a new [AssignmentLinksSelf] instance.
  AssignmentLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [AssignmentLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksSelf(
      href: json[r'href'],
      iriTemplate:
          AssignmentLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given assignment.
  String href;

  AssignmentLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<AssignmentLinksSelf> listFromJson(List<dynamic> json) {
    return <AssignmentLinksSelf>[
      if (json is List)
        for (dynamic value in json) AssignmentLinksSelf.fromJson(value),
    ];
  }

  static Map<String, AssignmentLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AssignmentLinksSelf>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentLinksSelf.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentLinksSelf-objects as value to a dart map
  static Map<String, List<AssignmentLinksSelf>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<AssignmentLinksSelf>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentLinksSelf.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}

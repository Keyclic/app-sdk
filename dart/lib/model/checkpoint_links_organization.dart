//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CheckpointLinksOrganization {
  /// Returns a new [CheckpointLinksOrganization] instance.
  CheckpointLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [CheckpointLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CheckpointLinksOrganization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CheckpointLinksOrganization(
      href: json[r'href'],
      iriTemplate:
          CheckpointLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given checkpoint.
  String? href;

  CheckpointLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<CheckpointLinksOrganization> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CheckpointLinksOrganization>[];
    }
    return json
        .map((value) {
          return CheckpointLinksOrganization.fromJson(value);
        })
        .whereType<CheckpointLinksOrganization>()
        .toList();
  }

  static Map<String, CheckpointLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CheckpointLinksOrganization>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, CheckpointLinksOrganization?>(
            key, CheckpointLinksOrganization.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CheckpointLinksOrganization>;
  }

  // maps a json object with a list of CheckpointLinksOrganization-objects as value to a dart map
  static Map<String, List<CheckpointLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CheckpointLinksOrganization>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: CheckpointLinksOrganization.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'CheckpointLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}

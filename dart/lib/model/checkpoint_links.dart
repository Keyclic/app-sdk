//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class CheckpointLinks {
  /// Returns a new [CheckpointLinks] instance.
  CheckpointLinks({
    this.organization,
  });

  /// Returns a new [CheckpointLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory CheckpointLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return CheckpointLinks(
      organization: CheckpointLinksOrganization.fromJson(json[r'organization']),
    );
  }

  CheckpointLinksOrganization organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointLinks && other.organization == organization;
  }

  @override
  int get hashCode => (organization == null ? 0 : organization.hashCode);

  static List<CheckpointLinks> listFromJson(List<dynamic> json) {
    return <CheckpointLinks>[
      if (json is List)
        for (dynamic value in json) CheckpointLinks.fromJson(value),
    ];
  }

  static Map<String, CheckpointLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, CheckpointLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CheckpointLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of CheckpointLinks-objects as value to a dart map
  static Map<String, List<CheckpointLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<CheckpointLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: CheckpointLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'CheckpointLinks[organization=$organization]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (organization != null) r'organization': organization,
    };
  }
}

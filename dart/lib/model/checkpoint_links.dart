//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CheckpointLinks {
  /// Returns a new [CheckpointLinks] instance.
  CheckpointLinks({
    this.organization,
  });

  /// Returns a new [CheckpointLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CheckpointLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CheckpointLinks(
      organization: CheckpointLinksOrganization.fromJson(json[r'organization']),
    );
  }

  CheckpointLinksOrganization? organization;

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

  static List<CheckpointLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <CheckpointLinks>[];
    }
    return json
        .map((value) {
          return CheckpointLinks.fromJson(value);
        })
        .whereType<CheckpointLinks>()
        .toList();
  }

  static Map<String, CheckpointLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CheckpointLinks>{};
    }

    final map = json.map((key, value) => MapEntry<String, CheckpointLinks?>(
        key, CheckpointLinks.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, CheckpointLinks>;
  }

  // maps a json object with a list of CheckpointLinks-objects as value to a dart map
  static Map<String, List<CheckpointLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<CheckpointLinks>>{
      if (json is Map)
        for (final entry in json!.entries)
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

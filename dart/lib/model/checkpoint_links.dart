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

    return json.fold(<CheckpointLinks>[],
        (List<CheckpointLinks> previousValue, element) {
      final CheckpointLinks? object = CheckpointLinks.fromJson(element);
      if (object is CheckpointLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CheckpointLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CheckpointLinks>{};
    }

    return json.entries.fold(<String, CheckpointLinks>{},
        (Map<String, CheckpointLinks> previousValue, element) {
      final CheckpointLinks? object = CheckpointLinks.fromJson(element.value);
      if (object is CheckpointLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CheckpointLinks-objects as value to a dart map
  static Map<String, List<CheckpointLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CheckpointLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CheckpointLinks>>(
          key, CheckpointLinks.listFromJson(value));
    });
  }

  @override
  String toString() => 'CheckpointLinks[organization=$organization]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization?.toJson(),
    };
  }
}

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksService {
  /// Returns a new [AssignmentLinksService] instance.
  AssignmentLinksService({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [AssignmentLinksService] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksService? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksService(
      href: json[r'href'],
      iriTemplate:
          AssignmentLinksServiceIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the service associated to the given assignment.
  String? href;

  AssignmentLinksServiceIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksService &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<AssignmentLinksService> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksService>[];
    }
    return json
        .map((value) {
          return AssignmentLinksService.fromJson(value);
        })
        .whereType<AssignmentLinksService>()
        .toList();
  }

  static Map<String, AssignmentLinksService> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksService>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, AssignmentLinksService?>(
            key, AssignmentLinksService.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, AssignmentLinksService>;
  }

  // maps a json object with a list of AssignmentLinksService-objects as value to a dart map
  static Map<String, List<AssignmentLinksService>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<AssignmentLinksService>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: AssignmentLinksService.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentLinksService[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}

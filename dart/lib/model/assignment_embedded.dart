//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class AssignmentEmbedded {
  /// Returns a new [AssignmentEmbedded] instance.
  AssignmentEmbedded({
    this.createdBy,
    this.service,
  });

  /// Returns a new [AssignmentEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory AssignmentEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentEmbedded(
      createdBy: Person.fromJson(json[r'createdBy']),
      service: InternalService.fromJson(json[r'service']),
    );
  }

  Person createdBy;

  InternalService service;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentEmbedded &&
        other.createdBy == createdBy &&
        other.service == service;
  }

  @override
  int get hashCode =>
      (createdBy == null ? 0 : createdBy.hashCode) +
      (service == null ? 0 : service.hashCode);

  static List<AssignmentEmbedded> listFromJson(List<dynamic> json) {
    return <AssignmentEmbedded>[
      if (json is List)
        for (dynamic value in json) AssignmentEmbedded.fromJson(value),
    ];
  }

  static Map<String, AssignmentEmbedded> mapFromJson(
      Map<String, dynamic> json) {
    return <String, AssignmentEmbedded>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentEmbedded.fromJson(entry.value),
    };
  }

  // maps a json object with a list of AssignmentEmbedded-objects as value to a dart map
  static Map<String, List<AssignmentEmbedded>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<AssignmentEmbedded>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: AssignmentEmbedded.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'AssignmentEmbedded[createdBy=$createdBy, service=$service]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdBy != null) r'createdBy': createdBy,
      if (service != null) r'service': service,
    };
  }
}

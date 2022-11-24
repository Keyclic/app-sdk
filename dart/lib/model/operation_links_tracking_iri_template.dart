//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksTrackingIriTemplate {
  /// Returns a new [OperationLinksTrackingIriTemplate] instance.
  OperationLinksTrackingIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksTrackingIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksTrackingIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksTrackingIriTemplate(
      mapping: OperationLinksAssignmentsIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  OperationLinksAssignmentsIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksTrackingIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksTrackingIriTemplate> listFromJson(
      List<dynamic> json) {
    return <OperationLinksTrackingIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksTrackingIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OperationLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksTrackingIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksTrackingIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksTrackingIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksTrackingIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksTrackingIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              OperationLinksTrackingIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationLinksTrackingIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}

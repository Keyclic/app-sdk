//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksReportIriTemplate {
  /// Returns a new [OperationLinksReportIriTemplate] instance.
  OperationLinksReportIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksReportIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksReportIriTemplate(
      mapping:
          AssignmentLinksReportIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksReportIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksReportIriTemplate> listFromJson(
      List<dynamic> json) {
    return <OperationLinksReportIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksReportIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OperationLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksReportIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksReportIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksReportIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksReportIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksReportIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksReportIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationLinksReportIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}

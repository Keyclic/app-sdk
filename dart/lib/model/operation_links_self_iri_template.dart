//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksSelfIriTemplate {
  /// Returns a new [OperationLinksSelfIriTemplate] instance.
  OperationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksSelfIriTemplate(
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

    return other is OperationLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <OperationLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OperationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}

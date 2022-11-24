//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksOperatorIriTemplate {
  /// Returns a new [OperationLinksOperatorIriTemplate] instance.
  OperationLinksOperatorIriTemplate({
    this.mapping,
  });

  /// Returns a new [OperationLinksOperatorIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksOperatorIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOperatorIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOperatorIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<OperationLinksOperatorIriTemplate> listFromJson(
      List<dynamic> json) {
    return <OperationLinksOperatorIriTemplate>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksOperatorIriTemplate.fromJson(value),
    ];
  }

  static Map<String, OperationLinksOperatorIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksOperatorIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksOperatorIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksOperatorIriTemplate-objects as value to a dart map
  static Map<String, List<OperationLinksOperatorIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksOperatorIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              OperationLinksOperatorIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'OperationLinksOperatorIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}

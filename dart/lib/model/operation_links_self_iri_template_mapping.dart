//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksSelfIriTemplateMapping {
  /// Returns a new [OperationLinksSelfIriTemplateMapping] instance.
  OperationLinksSelfIriTemplateMapping({
    this.operation,
  });

  /// Returns a new [OperationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksSelfIriTemplateMapping(
      operation: json[r'operation'],
    );
  }

  String operation;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksSelfIriTemplateMapping &&
        other.operation == operation;
  }

  @override
  int get hashCode => (operation == null ? 0 : operation.hashCode);

  static List<OperationLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <OperationLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          OperationLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, OperationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<OperationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<OperationLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              OperationLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksSelfIriTemplateMapping[operation=$operation]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (operation != null) r'operation': operation,
    };
  }
}

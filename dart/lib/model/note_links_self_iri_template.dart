//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteLinksSelfIriTemplate {
  /// Returns a new [NoteLinksSelfIriTemplate] instance.
  NoteLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [NoteLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelfIriTemplate(
      mapping: NoteLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  NoteLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<NoteLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return <NoteLinksSelfIriTemplate>[
      if (json is List)
        for (dynamic value in json) NoteLinksSelfIriTemplate.fromJson(value),
    ];
  }

  static Map<String, NoteLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return <String, NoteLinksSelfIriTemplate>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksSelfIriTemplate.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<NoteLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteLinksSelfIriTemplate>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksSelfIriTemplate.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}

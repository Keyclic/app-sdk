//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class NoteLinksSelfIriTemplateMapping {
  /// Returns a new [NoteLinksSelfIriTemplateMapping] instance.
  NoteLinksSelfIriTemplateMapping({
    this.note,
  });

  /// Returns a new [NoteLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory NoteLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelfIriTemplateMapping(
      note: json[r'note'],
    );
  }

  String note;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is NoteLinksSelfIriTemplateMapping && other.note == note;
  }

  @override
  int get hashCode => (note == null ? 0 : note.hashCode);

  static List<NoteLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return <NoteLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          NoteLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, NoteLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, NoteLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of NoteLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<NoteLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<NoteLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: NoteLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'NoteLinksSelfIriTemplateMapping[note=$note]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (note != null) r'note': note,
    };
  }
}

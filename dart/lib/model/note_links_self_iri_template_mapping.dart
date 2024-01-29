//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NoteLinksSelfIriTemplateMapping {
  /// Returns a new [NoteLinksSelfIriTemplateMapping] instance.
  NoteLinksSelfIriTemplateMapping({
    this.note,
  });

  /// Returns a new [NoteLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteLinksSelfIriTemplateMapping? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelfIriTemplateMapping(
      note: json[r'note'],
    );
  }

  String? note;

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
      List<dynamic>? json) {
    if (json == null) {
      return <NoteLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<NoteLinksSelfIriTemplateMapping>[],
        (List<NoteLinksSelfIriTemplateMapping> previousValue, element) {
      final NoteLinksSelfIriTemplateMapping? object =
          NoteLinksSelfIriTemplateMapping.fromJson(element);
      if (object is NoteLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, NoteLinksSelfIriTemplateMapping>{},
        (Map<String, NoteLinksSelfIriTemplateMapping> previousValue, element) {
      final NoteLinksSelfIriTemplateMapping? object =
          NoteLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is NoteLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<NoteLinksSelfIriTemplateMapping>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteLinksSelfIriTemplateMapping>>(
          key, NoteLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteLinksSelfIriTemplateMapping[note=$note]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'note')) r'note': note,
    };
  }
}

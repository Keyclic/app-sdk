//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class NoteLinksSelfIriTemplate {
  /// Returns a new [NoteLinksSelfIriTemplate] instance.
  NoteLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [NoteLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NoteLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return NoteLinksSelfIriTemplate(
      mapping: NoteLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  NoteLinksSelfIriTemplateMapping? mapping;

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

  static List<NoteLinksSelfIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <NoteLinksSelfIriTemplate>[];
    }

    return json.fold(<NoteLinksSelfIriTemplate>[],
        (List<NoteLinksSelfIriTemplate> previousValue, element) {
      final NoteLinksSelfIriTemplate? object =
          NoteLinksSelfIriTemplate.fromJson(element);
      if (object is NoteLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, NoteLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, NoteLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, NoteLinksSelfIriTemplate>{},
        (Map<String, NoteLinksSelfIriTemplate> previousValue, element) {
      final NoteLinksSelfIriTemplate? object =
          NoteLinksSelfIriTemplate.fromJson(element.value);
      if (object is NoteLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of NoteLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<NoteLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<NoteLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<NoteLinksSelfIriTemplate>>(
          key, NoteLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'NoteLinksSelfIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^mapping\.').hasMatch(key)))
        r'mapping': mapping?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^mapping\.'))) {
            previousValue.add(element.split(RegExp(r'^mapping\.')).last);
          }

          return previousValue;
        })),
    };
  }
}

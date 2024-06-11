//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksSelfIriTemplate {
  /// Returns a new [MemberLinksSelfIriTemplate] instance.
  MemberLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [MemberLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberLinksSelfIriTemplate(
      mapping:
          AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  AssignmentLinksMemberIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MemberLinksSelfIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberLinksSelfIriTemplate>[];
    }

    return json.fold(<MemberLinksSelfIriTemplate>[],
        (List<MemberLinksSelfIriTemplate> previousValue, element) {
      final MemberLinksSelfIriTemplate? object =
          MemberLinksSelfIriTemplate.fromJson(element);
      if (object is MemberLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, MemberLinksSelfIriTemplate>{},
        (Map<String, MemberLinksSelfIriTemplate> previousValue, element) {
      final MemberLinksSelfIriTemplate? object =
          MemberLinksSelfIriTemplate.fromJson(element.value);
      if (object is MemberLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<MemberLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberLinksSelfIriTemplate>>(
          key, MemberLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'MemberLinksSelfIriTemplate[mapping=$mapping]';

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

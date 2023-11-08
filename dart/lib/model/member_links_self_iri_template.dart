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
  static MemberLinksSelfIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinksSelfIriTemplate(
      mapping: json[r'mapping'] is! Map
          ? null
          : AssignmentLinksMemberIriTemplateMapping.fromJson(json[r'mapping']),
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

  static List<MemberLinksSelfIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}

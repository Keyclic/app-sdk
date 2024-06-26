//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksOrganizationIriTemplate {
  /// Returns a new [MemberLinksOrganizationIriTemplate] instance.
  MemberLinksOrganizationIriTemplate({
    this.mapping,
  });

  /// Returns a new [MemberLinksOrganizationIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksOrganizationIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return MemberLinksOrganizationIriTemplate(
      mapping: CategoryLinksOrganizationIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganizationIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MemberLinksOrganizationIriTemplate> listFromJson(Iterable? json) {
    if (json == null) {
      return <MemberLinksOrganizationIriTemplate>[];
    }

    return json.fold(<MemberLinksOrganizationIriTemplate>[],
        (List<MemberLinksOrganizationIriTemplate> previousValue, element) {
      final MemberLinksOrganizationIriTemplate? object =
          MemberLinksOrganizationIriTemplate.fromJson(element);
      if (object is MemberLinksOrganizationIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksOrganizationIriTemplate>{};
    }

    return json.entries.fold(<String, MemberLinksOrganizationIriTemplate>{},
        (Map<String, MemberLinksOrganizationIriTemplate> previousValue,
            element) {
      final MemberLinksOrganizationIriTemplate? object =
          MemberLinksOrganizationIriTemplate.fromJson(element.value);
      if (object is MemberLinksOrganizationIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberLinksOrganizationIriTemplate-objects as value to a dart map
  static Map<String, List<MemberLinksOrganizationIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberLinksOrganizationIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberLinksOrganizationIriTemplate>>(
          key, MemberLinksOrganizationIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'MemberLinksOrganizationIriTemplate[mapping=$mapping]';

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

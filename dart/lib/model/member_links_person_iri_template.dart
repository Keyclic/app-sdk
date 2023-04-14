//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberLinksPersonIriTemplate {
  /// Returns a new [MemberLinksPersonIriTemplate] instance.
  MemberLinksPersonIriTemplate({
    this.mapping,
  });

  /// Returns a new [MemberLinksPersonIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberLinksPersonIriTemplate? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberLinksPersonIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json[r'mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksPersonIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<MemberLinksPersonIriTemplate> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberLinksPersonIriTemplate>[];
    }

    return json.fold(<MemberLinksPersonIriTemplate>[],
        (List<MemberLinksPersonIriTemplate> previousValue, element) {
      final MemberLinksPersonIriTemplate? object =
          MemberLinksPersonIriTemplate.fromJson(element);
      if (object is MemberLinksPersonIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberLinksPersonIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberLinksPersonIriTemplate>{};
    }

    return json.entries.fold(<String, MemberLinksPersonIriTemplate>{},
        (Map<String, MemberLinksPersonIriTemplate> previousValue, element) {
      final MemberLinksPersonIriTemplate? object =
          MemberLinksPersonIriTemplate.fromJson(element.value);
      if (object is MemberLinksPersonIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberLinksPersonIriTemplate-objects as value to a dart map
  static Map<String, List<MemberLinksPersonIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberLinksPersonIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberLinksPersonIriTemplate>>(
          key, MemberLinksPersonIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'MemberLinksPersonIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (mapping != null) r'mapping': mapping,
    };
  }
}

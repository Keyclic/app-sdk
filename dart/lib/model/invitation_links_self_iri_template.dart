//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationLinksSelfIriTemplate {
  /// Returns a new [InvitationLinksSelfIriTemplate] instance.
  InvitationLinksSelfIriTemplate({
    this.mapping,
  });

  /// Returns a new [InvitationLinksSelfIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationLinksSelfIriTemplate? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return InvitationLinksSelfIriTemplate(
      mapping: InvitationLinksSelfIriTemplateMapping.fromJson(json[r'mapping']),
    );
  }

  InvitationLinksSelfIriTemplateMapping? mapping;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksSelfIriTemplate && other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<InvitationLinksSelfIriTemplate> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <InvitationLinksSelfIriTemplate>[];
    }

    return json.fold(<InvitationLinksSelfIriTemplate>[],
        (List<InvitationLinksSelfIriTemplate> previousValue, element) {
      final InvitationLinksSelfIriTemplate? object =
          InvitationLinksSelfIriTemplate.fromJson(element);
      if (object is InvitationLinksSelfIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InvitationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinksSelfIriTemplate>{};
    }

    return json.entries.fold(<String, InvitationLinksSelfIriTemplate>{},
        (Map<String, InvitationLinksSelfIriTemplate> previousValue, element) {
      final InvitationLinksSelfIriTemplate? object =
          InvitationLinksSelfIriTemplate.fromJson(element.value);
      if (object is InvitationLinksSelfIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InvitationLinksSelfIriTemplate-objects as value to a dart map
  static Map<String, List<InvitationLinksSelfIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InvitationLinksSelfIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InvitationLinksSelfIriTemplate>>(
          key, InvitationLinksSelfIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'InvitationLinksSelfIriTemplate[mapping=$mapping]';

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

//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationLinksMemberIriTemplate {
  /// Returns a new [InvitationLinksMemberIriTemplate] instance.
  InvitationLinksMemberIriTemplate({
    this.mapping,
  });

  /// Returns a new [InvitationLinksMemberIriTemplate] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationLinksMemberIriTemplate? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksMemberIriTemplate(
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

    return other is InvitationLinksMemberIriTemplate &&
        other.mapping == mapping;
  }

  @override
  int get hashCode => (mapping == null ? 0 : mapping.hashCode);

  static List<InvitationLinksMemberIriTemplate> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <InvitationLinksMemberIriTemplate>[];
    }

    return json.fold(<InvitationLinksMemberIriTemplate>[],
        (List<InvitationLinksMemberIriTemplate> previousValue, element) {
      final InvitationLinksMemberIriTemplate? object =
          InvitationLinksMemberIriTemplate.fromJson(element);
      if (object is InvitationLinksMemberIriTemplate) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InvitationLinksMemberIriTemplate> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinksMemberIriTemplate>{};
    }

    return json.entries.fold(<String, InvitationLinksMemberIriTemplate>{},
        (Map<String, InvitationLinksMemberIriTemplate> previousValue, element) {
      final InvitationLinksMemberIriTemplate? object =
          InvitationLinksMemberIriTemplate.fromJson(element.value);
      if (object is InvitationLinksMemberIriTemplate) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InvitationLinksMemberIriTemplate-objects as value to a dart map
  static Map<String, List<InvitationLinksMemberIriTemplate>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InvitationLinksMemberIriTemplate>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InvitationLinksMemberIriTemplate>>(
          key, InvitationLinksMemberIriTemplate.listFromJson(value));
    });
  }

  @override
  String toString() => 'InvitationLinksMemberIriTemplate[mapping=$mapping]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && mapping != null) ||
          (keys?.contains(r'mapping') ?? false))
        r'mapping': mapping?.toJson(),
    };
  }
}

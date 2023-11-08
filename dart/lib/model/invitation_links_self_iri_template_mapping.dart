//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationLinksSelfIriTemplateMapping {
  /// Returns a new [InvitationLinksSelfIriTemplateMapping] instance.
  InvitationLinksSelfIriTemplateMapping({
    this.invitation,
  });

  /// Returns a new [InvitationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationLinksSelfIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksSelfIriTemplateMapping(
      invitation: json[r'invitation'],
    );
  }

  String? invitation;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksSelfIriTemplateMapping &&
        other.invitation == invitation;
  }

  @override
  int get hashCode => (invitation == null ? 0 : invitation.hashCode);

  static List<InvitationLinksSelfIriTemplateMapping> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <InvitationLinksSelfIriTemplateMapping>[];
    }

    return json.fold(<InvitationLinksSelfIriTemplateMapping>[],
        (List<InvitationLinksSelfIriTemplateMapping> previousValue, element) {
      final InvitationLinksSelfIriTemplateMapping? object =
          InvitationLinksSelfIriTemplateMapping.fromJson(element);
      if (object is InvitationLinksSelfIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InvitationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinksSelfIriTemplateMapping>{};
    }

    return json.entries.fold(<String, InvitationLinksSelfIriTemplateMapping>{},
        (Map<String, InvitationLinksSelfIriTemplateMapping> previousValue,
            element) {
      final InvitationLinksSelfIriTemplateMapping? object =
          InvitationLinksSelfIriTemplateMapping.fromJson(element.value);
      if (object is InvitationLinksSelfIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InvitationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<InvitationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InvitationLinksSelfIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InvitationLinksSelfIriTemplateMapping>>(
          key, InvitationLinksSelfIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InvitationLinksSelfIriTemplateMapping[invitation=$invitation]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && invitation != null) ||
          (keys?.contains(r'invitation') ?? false))
        r'invitation': invitation,
    };
  }
}

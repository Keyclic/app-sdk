//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class InvitationLinksSelfIriTemplateMapping {
  /// Returns a new [InvitationLinksSelfIriTemplateMapping] instance.
  InvitationLinksSelfIriTemplateMapping({
    this.invitation,
  });

  /// Returns a new [InvitationLinksSelfIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory InvitationLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksSelfIriTemplateMapping(
      invitation: json[r'invitation'],
    );
  }

  String invitation;

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
      List<dynamic> json) {
    return <InvitationLinksSelfIriTemplateMapping>[
      if (json is List)
        for (dynamic value in json)
          InvitationLinksSelfIriTemplateMapping.fromJson(value),
    ];
  }

  static Map<String, InvitationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return <String, InvitationLinksSelfIriTemplateMapping>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              InvitationLinksSelfIriTemplateMapping.fromJson(entry.value),
    };
  }

  // maps a json object with a list of InvitationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<InvitationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic> json) {
    return <String, List<InvitationLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key:
              InvitationLinksSelfIriTemplateMapping.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InvitationLinksSelfIriTemplateMapping[invitation=$invitation]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (invitation != null) r'invitation': invitation,
    };
  }
}

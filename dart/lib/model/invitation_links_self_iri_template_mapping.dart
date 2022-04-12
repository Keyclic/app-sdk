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
      List<dynamic>? json) {
    if (json == null) {
      return <InvitationLinksSelfIriTemplateMapping>[];
    }
    return json
        .map((value) {
          return InvitationLinksSelfIriTemplateMapping.fromJson(value);
        })
        .whereType<InvitationLinksSelfIriTemplateMapping>()
        .toList();
  }

  static Map<String, InvitationLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinksSelfIriTemplateMapping>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InvitationLinksSelfIriTemplateMapping?>(
            key, InvitationLinksSelfIriTemplateMapping.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InvitationLinksSelfIriTemplateMapping>;
  }

  // maps a json object with a list of InvitationLinksSelfIriTemplateMapping-objects as value to a dart map
  static Map<String, List<InvitationLinksSelfIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    return <String, List<InvitationLinksSelfIriTemplateMapping>>{
      if (json is Map)
        for (final entry in json!.entries)
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

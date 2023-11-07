//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationLinksMember {
  /// Returns a new [InvitationLinksMember] instance.
  InvitationLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [InvitationLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationLinksMember? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksMember(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : InvitationLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given invitation.
  String? href;

  InvitationLinksMemberIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksMember &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<InvitationLinksMember> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InvitationLinksMember>[];
    }

    return json.fold(<InvitationLinksMember>[],
        (List<InvitationLinksMember> previousValue, element) {
      final InvitationLinksMember? object =
          InvitationLinksMember.fromJson(element);
      if (object is InvitationLinksMember) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InvitationLinksMember> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinksMember>{};
    }

    return json.entries.fold(<String, InvitationLinksMember>{},
        (Map<String, InvitationLinksMember> previousValue, element) {
      final InvitationLinksMember? object =
          InvitationLinksMember.fromJson(element.value);
      if (object is InvitationLinksMember) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InvitationLinksMember-objects as value to a dart map
  static Map<String, List<InvitationLinksMember>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InvitationLinksMember>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InvitationLinksMember>>(
          key, InvitationLinksMember.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InvitationLinksMember[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}

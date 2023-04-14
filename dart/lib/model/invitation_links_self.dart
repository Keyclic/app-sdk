//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InvitationLinksSelf {
  /// Returns a new [InvitationLinksSelf] instance.
  InvitationLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [InvitationLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InvitationLinksSelf? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InvitationLinksSelf(
      href: json[r'href'],
      iriTemplate:
          InvitationLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given invitation.
  String? href;

  InvitationLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<InvitationLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InvitationLinksSelf>[];
    }

    return json.fold(<InvitationLinksSelf>[],
        (List<InvitationLinksSelf> previousValue, element) {
      final InvitationLinksSelf? object = InvitationLinksSelf.fromJson(element);
      if (object is InvitationLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, InvitationLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InvitationLinksSelf>{};
    }

    return json.entries.fold(<String, InvitationLinksSelf>{},
        (Map<String, InvitationLinksSelf> previousValue, element) {
      final InvitationLinksSelf? object =
          InvitationLinksSelf.fromJson(element.value);
      if (object is InvitationLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of InvitationLinksSelf-objects as value to a dart map
  static Map<String, List<InvitationLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<InvitationLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<InvitationLinksSelf>>(
          key, InvitationLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'InvitationLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
